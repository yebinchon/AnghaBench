
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pinctrl_drv_data {struct samsung_pin_ctrl const* retention_ctrl; int irq; struct device* dev; } ;
struct samsung_pin_ctrl {int (* eint_wkup_init ) (struct samsung_pinctrl_drv_data*) ;int (* eint_gpio_init ) (struct samsung_pinctrl_drv_data*) ;TYPE_1__* retention_data; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct samsung_pin_ctrl const* (* init ) (struct samsung_pinctrl_drv_data*,TYPE_1__*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 scalar_t__ IS_ERR (struct samsung_pin_ctrl const*) ;
 int PTR_ERR (struct samsung_pin_ctrl const*) ;
 int dev_err (struct device*,char*) ;
 struct samsung_pinctrl_drv_data* devm_kzalloc (struct device*,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct samsung_pinctrl_drv_data*) ;
 int samsung_gpiolib_register (struct platform_device*,struct samsung_pinctrl_drv_data*) ;
 struct samsung_pin_ctrl* samsung_pinctrl_get_soc_data (struct samsung_pinctrl_drv_data*,struct platform_device*) ;
 int samsung_pinctrl_register (struct platform_device*,struct samsung_pinctrl_drv_data*) ;
 int samsung_pinctrl_unregister (struct platform_device*,struct samsung_pinctrl_drv_data*) ;
 struct samsung_pin_ctrl const* stub1 (struct samsung_pinctrl_drv_data*,TYPE_1__*) ;
 int stub2 (struct samsung_pinctrl_drv_data*) ;
 int stub3 (struct samsung_pinctrl_drv_data*) ;

__attribute__((used)) static int samsung_pinctrl_probe(struct platform_device *pdev)
{
 struct samsung_pinctrl_drv_data *drvdata;
 const struct samsung_pin_ctrl *ctrl;
 struct device *dev = &pdev->dev;
 struct resource *res;
 int ret;

 drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 ctrl = samsung_pinctrl_get_soc_data(drvdata, pdev);
 if (IS_ERR(ctrl)) {
  dev_err(&pdev->dev, "driver data not available\n");
  return PTR_ERR(ctrl);
 }
 drvdata->dev = dev;

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res)
  drvdata->irq = res->start;

 if (ctrl->retention_data) {
  drvdata->retention_ctrl = ctrl->retention_data->init(drvdata,
         ctrl->retention_data);
  if (IS_ERR(drvdata->retention_ctrl))
   return PTR_ERR(drvdata->retention_ctrl);
 }

 ret = samsung_pinctrl_register(pdev, drvdata);
 if (ret)
  return ret;

 ret = samsung_gpiolib_register(pdev, drvdata);
 if (ret) {
  samsung_pinctrl_unregister(pdev, drvdata);
  return ret;
 }

 if (ctrl->eint_gpio_init)
  ctrl->eint_gpio_init(drvdata);
 if (ctrl->eint_wkup_init)
  ctrl->eint_wkup_init(drvdata);

 platform_set_drvdata(pdev, drvdata);

 return 0;
}
