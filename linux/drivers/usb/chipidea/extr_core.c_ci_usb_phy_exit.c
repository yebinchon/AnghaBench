
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ci_hdrc {int usb_phy; scalar_t__ phy; TYPE_1__* platdata; } ;
struct TYPE_2__ {int flags; } ;


 int CI_HDRC_OVERRIDE_PHY_CONTROL ;
 int phy_exit (scalar_t__) ;
 int phy_power_off (scalar_t__) ;
 int usb_phy_shutdown (int ) ;

__attribute__((used)) static void ci_usb_phy_exit(struct ci_hdrc *ci)
{
 if (ci->platdata->flags & CI_HDRC_OVERRIDE_PHY_CONTROL)
  return;

 if (ci->phy) {
  phy_power_off(ci->phy);
  phy_exit(ci->phy);
 } else {
  usb_phy_shutdown(ci->usb_phy);
 }
}
