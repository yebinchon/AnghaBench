
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ port_over_current_change; scalar_t__ port_suspend_change; scalar_t__ port_enable_change; scalar_t__ port_reset_change; scalar_t__ port_connect_status_change; } ;
struct TYPE_4__ {TYPE_1__ b; } ;
struct dwc2_hsotg {TYPE_2__ flags; int dev; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,...) ;

__attribute__((used)) static int dwc2_hcd_is_status_changed(struct dwc2_hsotg *hsotg, int port)
{
 int retval;

 if (port != 1)
  return -EINVAL;

 retval = (hsotg->flags.b.port_connect_status_change ||
    hsotg->flags.b.port_reset_change ||
    hsotg->flags.b.port_enable_change ||
    hsotg->flags.b.port_suspend_change ||
    hsotg->flags.b.port_over_current_change);

 if (retval) {
  dev_dbg(hsotg->dev,
   "DWC OTG HCD HUB STATUS DATA: Root port status changed\n");
  dev_dbg(hsotg->dev, "  port_connect_status_change: %d\n",
   hsotg->flags.b.port_connect_status_change);
  dev_dbg(hsotg->dev, "  port_reset_change: %d\n",
   hsotg->flags.b.port_reset_change);
  dev_dbg(hsotg->dev, "  port_enable_change: %d\n",
   hsotg->flags.b.port_enable_change);
  dev_dbg(hsotg->dev, "  port_suspend_change: %d\n",
   hsotg->flags.b.port_suspend_change);
  dev_dbg(hsotg->dev, "  port_over_current_change: %d\n",
   hsotg->flags.b.port_over_current_change);
 }

 return retval;
}
