
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct isp1760_device {unsigned int devflags; int hcd; int regs; int rst_gpio; struct device* dev; } ;
struct device {int dummy; } ;


 int CONFIG_USB_ISP1760_HCD ;
 int CONFIG_USB_ISP1761_UDC ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 unsigned long IRQF_SHARED ;
 unsigned int ISP1760_FLAG_ISP1761 ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_set_drvdata (struct device*,struct isp1760_device*) ;
 int devm_gpiod_get_optional (struct device*,int *,int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct isp1760_device* devm_kzalloc (struct device*,int,int ) ;
 int isp1760_hcd_register (int *,int ,struct resource*,int,unsigned long,struct device*) ;
 int isp1760_hcd_unregister (int *) ;
 int isp1760_init_core (struct isp1760_device*) ;
 int isp1760_udc_register (struct isp1760_device*,int,unsigned long) ;
 scalar_t__ usb_disabled () ;

int isp1760_register(struct resource *mem, int irq, unsigned long irqflags,
       struct device *dev, unsigned int devflags)
{
 struct isp1760_device *isp;
 bool udc_disabled = !(devflags & ISP1760_FLAG_ISP1761);
 int ret;





 if ((!IS_ENABLED(CONFIG_USB_ISP1760_HCD) || usb_disabled()) &&
     (!IS_ENABLED(CONFIG_USB_ISP1761_UDC) || udc_disabled))
  return -ENODEV;

 isp = devm_kzalloc(dev, sizeof(*isp), GFP_KERNEL);
 if (!isp)
  return -ENOMEM;

 isp->dev = dev;
 isp->devflags = devflags;

 isp->rst_gpio = devm_gpiod_get_optional(dev, ((void*)0), GPIOD_OUT_HIGH);
 if (IS_ERR(isp->rst_gpio))
  return PTR_ERR(isp->rst_gpio);

 isp->regs = devm_ioremap_resource(dev, mem);
 if (IS_ERR(isp->regs))
  return PTR_ERR(isp->regs);

 isp1760_init_core(isp);

 if (IS_ENABLED(CONFIG_USB_ISP1760_HCD) && !usb_disabled()) {
  ret = isp1760_hcd_register(&isp->hcd, isp->regs, mem, irq,
        irqflags | IRQF_SHARED, dev);
  if (ret < 0)
   return ret;
 }

 if (IS_ENABLED(CONFIG_USB_ISP1761_UDC) && !udc_disabled) {
  ret = isp1760_udc_register(isp, irq, irqflags);
  if (ret < 0) {
   isp1760_hcd_unregister(&isp->hcd);
   return ret;
  }
 }

 dev_set_drvdata(dev, isp);

 return 0;
}
