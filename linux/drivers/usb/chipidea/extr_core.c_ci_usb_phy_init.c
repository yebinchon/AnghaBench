
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ci_hdrc {TYPE_1__* platdata; } ;
struct TYPE_2__ {int flags; int phy_mode; } ;


 int CI_HDRC_OVERRIDE_PHY_CONTROL ;





 int _ci_usb_phy_init (struct ci_hdrc*) ;
 int hw_phymode_configure (struct ci_hdrc*) ;
 int hw_wait_phy_stable () ;

__attribute__((used)) static int ci_usb_phy_init(struct ci_hdrc *ci)
{
 int ret;

 if (ci->platdata->flags & CI_HDRC_OVERRIDE_PHY_CONTROL)
  return 0;

 switch (ci->platdata->phy_mode) {
 case 129:
 case 128:
 case 132:
  ret = _ci_usb_phy_init(ci);
  if (!ret)
   hw_wait_phy_stable();
  else
   return ret;
  hw_phymode_configure(ci);
  break;
 case 130:
 case 131:
  hw_phymode_configure(ci);
  ret = _ci_usb_phy_init(ci);
  if (ret)
   return ret;
  break;
 default:
  ret = _ci_usb_phy_init(ci);
  if (!ret)
   hw_wait_phy_stable();
 }

 return ret;
}
