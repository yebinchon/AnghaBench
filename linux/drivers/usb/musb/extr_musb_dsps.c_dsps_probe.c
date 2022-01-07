
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* parent; int of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct of_device_id {struct dsps_musb_wrapper* data; } ;
struct dsps_musb_wrapper {int dummy; } ;
struct dsps_glue {int usbss_base; struct dsps_musb_wrapper const* wrp; TYPE_2__* dev; } ;
struct TYPE_10__ {int read_fifo; } ;
struct TYPE_8__ {int of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ USB_DR_MODE_PERIPHERAL ;
 int dev_err (TYPE_2__*,char*) ;
 struct dsps_glue* devm_kzalloc (TYPE_2__*,int,int ) ;
 int dsps_create_musb_pdev (struct dsps_glue*,struct platform_device*) ;
 TYPE_5__ dsps_ops ;
 int dsps_read_fifo32 ;
 int dsps_setup_optional_vbus_irq (struct platform_device*,struct dsps_glue*) ;
 int iounmap (int ) ;
 int musb_dsps_of_match ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int of_iomap (int ,int ) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct dsps_glue*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int strcmp (int ,char*) ;
 scalar_t__ usb_get_dr_mode (TYPE_2__*) ;

__attribute__((used)) static int dsps_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 const struct dsps_musb_wrapper *wrp;
 struct dsps_glue *glue;
 int ret;

 if (!strcmp(pdev->name, "musb-hdrc"))
  return -ENODEV;

 match = of_match_node(musb_dsps_of_match, pdev->dev.of_node);
 if (!match) {
  dev_err(&pdev->dev, "fail to get matching of_match struct\n");
  return -EINVAL;
 }
 wrp = match->data;

 if (of_device_is_compatible(pdev->dev.of_node, "ti,musb-dm816"))
  dsps_ops.read_fifo = dsps_read_fifo32;


 glue = devm_kzalloc(&pdev->dev, sizeof(*glue), GFP_KERNEL);
 if (!glue)
  return -ENOMEM;

 glue->dev = &pdev->dev;
 glue->wrp = wrp;
 glue->usbss_base = of_iomap(pdev->dev.parent->of_node, 0);
 if (!glue->usbss_base)
  return -ENXIO;

 if (usb_get_dr_mode(&pdev->dev) == USB_DR_MODE_PERIPHERAL) {
  ret = dsps_setup_optional_vbus_irq(pdev, glue);
  if (ret)
   goto err_iounmap;
 }

 platform_set_drvdata(pdev, glue);
 pm_runtime_enable(&pdev->dev);
 ret = dsps_create_musb_pdev(glue, pdev);
 if (ret)
  goto err;

 return 0;

err:
 pm_runtime_disable(&pdev->dev);
err_iounmap:
 iounmap(glue->usbss_base);
 return ret;
}
