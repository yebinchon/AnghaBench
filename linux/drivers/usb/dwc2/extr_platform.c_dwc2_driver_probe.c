
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_11__ {int of_node; int coherent_dma_mask; int * dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dwc2_hsotg {int irq; scalar_t__ dr_mode; int gadget_enabled; int reset_phy_on_wake; int hcd_enabled; scalar_t__ hibernated; TYPE_1__* dev; int phy; void* need_phy_for_wake; int needs_byte_swap; int * vbus_supply; int lock; int * regs; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ USB_DR_MODE_HOST ;
 scalar_t__ USB_DR_MODE_PERIPHERAL ;
 int dev_dbg (TYPE_1__*,char*,int,...) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_name (TYPE_1__*) ;
 int dev_warn (TYPE_1__*,char*) ;
 int device_set_wakeup_capable (TYPE_1__*,int) ;
 int * devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct dwc2_hsotg* devm_kzalloc (TYPE_1__*,int,int ) ;
 int * devm_regulator_get_optional (TYPE_1__*,char*) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,int ,struct dwc2_hsotg*) ;
 int dma_set_coherent_mask (TYPE_1__*,int ) ;
 int dwc2_check_core_endianness (struct dwc2_hsotg*) ;
 int dwc2_core_reset (struct dwc2_hsotg*,int) ;
 int dwc2_debugfs_init (struct dwc2_hsotg*) ;
 int dwc2_force_dr_mode (struct dwc2_hsotg*) ;
 int dwc2_gadget_init (struct dwc2_hsotg*) ;
 int dwc2_get_dr_mode (struct dwc2_hsotg*) ;
 int dwc2_get_hwparams (struct dwc2_hsotg*) ;
 int dwc2_handle_common_intr ;
 int dwc2_hcd_init (struct dwc2_hsotg*) ;
 int dwc2_hsotg_remove (struct dwc2_hsotg*) ;
 int dwc2_init_params (struct dwc2_hsotg*) ;
 int dwc2_lowlevel_hw_disable (struct dwc2_hsotg*) ;
 int dwc2_lowlevel_hw_enable (struct dwc2_hsotg*) ;
 int dwc2_lowlevel_hw_init (struct dwc2_hsotg*) ;
 void* of_property_read_bool (int ,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct dwc2_hsotg*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dwc2_driver_probe(struct platform_device *dev)
{
 struct dwc2_hsotg *hsotg;
 struct resource *res;
 int retval;

 hsotg = devm_kzalloc(&dev->dev, sizeof(*hsotg), GFP_KERNEL);
 if (!hsotg)
  return -ENOMEM;

 hsotg->dev = &dev->dev;




 if (!dev->dev.dma_mask)
  dev->dev.dma_mask = &dev->dev.coherent_dma_mask;
 retval = dma_set_coherent_mask(&dev->dev, DMA_BIT_MASK(32));
 if (retval) {
  dev_err(&dev->dev, "can't set coherent DMA mask: %d\n", retval);
  return retval;
 }

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 hsotg->regs = devm_ioremap_resource(&dev->dev, res);
 if (IS_ERR(hsotg->regs))
  return PTR_ERR(hsotg->regs);

 dev_dbg(&dev->dev, "mapped PA %08lx to VA %p\n",
  (unsigned long)res->start, hsotg->regs);

 retval = dwc2_lowlevel_hw_init(hsotg);
 if (retval)
  return retval;

 spin_lock_init(&hsotg->lock);

 hsotg->irq = platform_get_irq(dev, 0);
 if (hsotg->irq < 0)
  return hsotg->irq;

 dev_dbg(hsotg->dev, "registering common handler for irq%d\n",
  hsotg->irq);
 retval = devm_request_irq(hsotg->dev, hsotg->irq,
      dwc2_handle_common_intr, IRQF_SHARED,
      dev_name(hsotg->dev), hsotg);
 if (retval)
  return retval;

 hsotg->vbus_supply = devm_regulator_get_optional(hsotg->dev, "vbus");
 if (IS_ERR(hsotg->vbus_supply)) {
  retval = PTR_ERR(hsotg->vbus_supply);
  hsotg->vbus_supply = ((void*)0);
  if (retval != -ENODEV)
   return retval;
 }

 retval = dwc2_lowlevel_hw_enable(hsotg);
 if (retval)
  return retval;

 hsotg->needs_byte_swap = dwc2_check_core_endianness(hsotg);

 retval = dwc2_get_dr_mode(hsotg);
 if (retval)
  goto error;

 hsotg->need_phy_for_wake =
  of_property_read_bool(dev->dev.of_node,
          "snps,need-phy-for-wake");





 retval = dwc2_core_reset(hsotg, 0);
 if (retval)
  goto error;


 retval = dwc2_get_hwparams(hsotg);
 if (retval)
  goto error;






 dwc2_force_dr_mode(hsotg);

 retval = dwc2_init_params(hsotg);
 if (retval)
  goto error;

 if (hsotg->dr_mode != USB_DR_MODE_HOST) {
  retval = dwc2_gadget_init(hsotg);
  if (retval)
   goto error;
  hsotg->gadget_enabled = 1;
 }






 if (hsotg->need_phy_for_wake)
  device_set_wakeup_capable(&dev->dev, 1);

 hsotg->reset_phy_on_wake =
  of_property_read_bool(dev->dev.of_node,
          "snps,reset-phy-on-wake");
 if (hsotg->reset_phy_on_wake && !hsotg->phy) {
  dev_warn(hsotg->dev,
    "Quirk reset-phy-on-wake only supports generic PHYs\n");
  hsotg->reset_phy_on_wake = 0;
 }

 if (hsotg->dr_mode != USB_DR_MODE_PERIPHERAL) {
  retval = dwc2_hcd_init(hsotg);
  if (retval) {
   if (hsotg->gadget_enabled)
    dwc2_hsotg_remove(hsotg);
   goto error;
  }
  hsotg->hcd_enabled = 1;
 }

 platform_set_drvdata(dev, hsotg);
 hsotg->hibernated = 0;

 dwc2_debugfs_init(hsotg);


 if (hsotg->dr_mode == USB_DR_MODE_PERIPHERAL)
  dwc2_lowlevel_hw_disable(hsotg);

 return 0;

error:
 dwc2_lowlevel_hw_disable(hsotg);
 return retval;
}
