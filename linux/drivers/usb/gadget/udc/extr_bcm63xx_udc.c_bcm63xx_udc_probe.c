
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct bcm63xx_usbd_platform_data {int use_fullspeed; } ;
struct TYPE_2__ {int max_speed; int name; int * ops; } ;
struct bcm63xx_udc {TYPE_1__ gadget; struct bcm63xx_udc* iudma; int ep0_wq; int lock; void* iudma_regs; void* usbd_regs; struct bcm63xx_usbd_platform_data* pd; struct device* dev; } ;


 int BCM63XX_NUM_IUDMA ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int bcm63xx_ep0_process ;
 int bcm63xx_init_udc_hw (struct bcm63xx_udc*) ;
 int bcm63xx_udc_cleanup_debugfs (struct bcm63xx_udc*) ;
 int bcm63xx_udc_ctrl_isr ;
 int bcm63xx_udc_data_isr ;
 int bcm63xx_udc_init_debugfs (struct bcm63xx_udc*) ;
 int bcm63xx_udc_ops ;
 int bcm63xx_uninit_udc_hw (struct bcm63xx_udc*) ;
 int dev_err (struct device*,char*,...) ;
 struct bcm63xx_usbd_platform_data* dev_get_platdata (struct device*) ;
 int dev_name (struct device*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct bcm63xx_udc* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_request_irq (struct device*,int,int *,int ,int ,struct bcm63xx_udc*) ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct bcm63xx_udc*) ;
 int spin_lock_init (int *) ;
 int usb_add_gadget_udc (struct device*,TYPE_1__*) ;
 int use_fullspeed ;

__attribute__((used)) static int bcm63xx_udc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct bcm63xx_usbd_platform_data *pd = dev_get_platdata(dev);
 struct bcm63xx_udc *udc;
 struct resource *res;
 int rc = -ENOMEM, i, irq;

 udc = devm_kzalloc(dev, sizeof(*udc), GFP_KERNEL);
 if (!udc)
  return -ENOMEM;

 platform_set_drvdata(pdev, udc);
 udc->dev = dev;
 udc->pd = pd;

 if (!pd) {
  dev_err(dev, "missing platform data\n");
  return -EINVAL;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 udc->usbd_regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(udc->usbd_regs))
  return PTR_ERR(udc->usbd_regs);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 udc->iudma_regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(udc->iudma_regs))
  return PTR_ERR(udc->iudma_regs);

 spin_lock_init(&udc->lock);
 INIT_WORK(&udc->ep0_wq, bcm63xx_ep0_process);

 udc->gadget.ops = &bcm63xx_udc_ops;
 udc->gadget.name = dev_name(dev);

 if (!pd->use_fullspeed && !use_fullspeed)
  udc->gadget.max_speed = USB_SPEED_HIGH;
 else
  udc->gadget.max_speed = USB_SPEED_FULL;


 rc = bcm63xx_init_udc_hw(udc);
 if (rc)
  return rc;

 rc = -ENXIO;


 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  goto out_uninit;
 if (devm_request_irq(dev, irq, &bcm63xx_udc_ctrl_isr, 0,
        dev_name(dev), udc) < 0)
  goto report_request_failure;


 for (i = 0; i < BCM63XX_NUM_IUDMA; i++) {
  irq = platform_get_irq(pdev, i + 1);
  if (irq < 0)
   goto out_uninit;
  if (devm_request_irq(dev, irq, &bcm63xx_udc_data_isr, 0,
         dev_name(dev), &udc->iudma[i]) < 0)
   goto report_request_failure;
 }

 bcm63xx_udc_init_debugfs(udc);
 rc = usb_add_gadget_udc(dev, &udc->gadget);
 if (!rc)
  return 0;

 bcm63xx_udc_cleanup_debugfs(udc);
out_uninit:
 bcm63xx_uninit_udc_hw(udc);
 return rc;

report_request_failure:
 dev_err(dev, "error requesting IRQ #%d\n", irq);
 goto out_uninit;
}
