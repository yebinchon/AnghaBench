
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dwc2_hsotg {int reset_ecc; int reset; scalar_t__ ll_hw_enabled; scalar_t__ gadget_enabled; scalar_t__ hcd_enabled; } ;


 int dwc2_debugfs_exit (struct dwc2_hsotg*) ;
 int dwc2_hcd_remove (struct dwc2_hsotg*) ;
 int dwc2_hsotg_remove (struct dwc2_hsotg*) ;
 int dwc2_lowlevel_hw_disable (struct dwc2_hsotg*) ;
 struct dwc2_hsotg* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int dwc2_driver_remove(struct platform_device *dev)
{
 struct dwc2_hsotg *hsotg = platform_get_drvdata(dev);

 dwc2_debugfs_exit(hsotg);
 if (hsotg->hcd_enabled)
  dwc2_hcd_remove(hsotg);
 if (hsotg->gadget_enabled)
  dwc2_hsotg_remove(hsotg);

 if (hsotg->ll_hw_enabled)
  dwc2_lowlevel_hw_disable(hsotg);

 reset_control_assert(hsotg->reset);
 reset_control_assert(hsotg->reset_ecc);

 return 0;
}
