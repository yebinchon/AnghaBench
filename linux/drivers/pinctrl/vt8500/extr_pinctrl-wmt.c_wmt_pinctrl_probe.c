
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ngpio; int of_node; TYPE_6__* parent; } ;
struct wmt_pinctrl_data {int nbanks; TYPE_1__ gpio_chip; TYPE_6__* dev; int pctl_dev; int npins; int pins; int base; } ;
struct resource {int dummy; } ;
struct TYPE_14__ {int of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_13__ {int npins; int pins; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_6__*,char*) ;
 int dev_info (TYPE_6__*,char*) ;
 int dev_name (TYPE_6__*) ;
 int devm_ioremap_resource (TYPE_6__*,struct resource*) ;
 int devm_pinctrl_register (TYPE_6__*,TYPE_2__*,struct wmt_pinctrl_data*) ;
 int gpiochip_add_data (TYPE_1__*,struct wmt_pinctrl_data*) ;
 int gpiochip_add_pin_range (TYPE_1__*,int ,int ,int ,int) ;
 int gpiochip_remove (TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wmt_pinctrl_data*) ;
 TYPE_2__ wmt_desc ;
 TYPE_1__ wmt_gpio_chip ;

int wmt_pinctrl_probe(struct platform_device *pdev,
        struct wmt_pinctrl_data *data)
{
 int err;
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 data->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(data->base))
  return PTR_ERR(data->base);

 wmt_desc.pins = data->pins;
 wmt_desc.npins = data->npins;

 data->gpio_chip = wmt_gpio_chip;
 data->gpio_chip.parent = &pdev->dev;
 data->gpio_chip.of_node = pdev->dev.of_node;
 data->gpio_chip.ngpio = data->nbanks * 32;

 platform_set_drvdata(pdev, data);

 data->dev = &pdev->dev;

 data->pctl_dev = devm_pinctrl_register(&pdev->dev, &wmt_desc, data);
 if (IS_ERR(data->pctl_dev)) {
  dev_err(&pdev->dev, "Failed to register pinctrl\n");
  return PTR_ERR(data->pctl_dev);
 }

 err = gpiochip_add_data(&data->gpio_chip, data);
 if (err) {
  dev_err(&pdev->dev, "could not add GPIO chip\n");
  return err;
 }

 err = gpiochip_add_pin_range(&data->gpio_chip, dev_name(data->dev),
         0, 0, data->nbanks * 32);
 if (err)
  goto fail_range;

 dev_info(&pdev->dev, "Pin controller initialized\n");

 return 0;

fail_range:
 gpiochip_remove(&data->gpio_chip);
 return err;
}
