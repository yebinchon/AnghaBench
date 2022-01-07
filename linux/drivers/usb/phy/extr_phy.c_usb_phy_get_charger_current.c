
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int sdp_min; unsigned int sdp_max; unsigned int dcp_min; unsigned int dcp_max; unsigned int cdp_min; unsigned int cdp_max; unsigned int aca_min; unsigned int aca_max; } ;
struct usb_phy {int chg_type; TYPE_1__ chg_cur; } ;







void usb_phy_get_charger_current(struct usb_phy *usb_phy,
     unsigned int *min, unsigned int *max)
{
 switch (usb_phy->chg_type) {
 case 128:
  *min = usb_phy->chg_cur.sdp_min;
  *max = usb_phy->chg_cur.sdp_max;
  break;
 case 129:
  *min = usb_phy->chg_cur.dcp_min;
  *max = usb_phy->chg_cur.dcp_max;
  break;
 case 130:
  *min = usb_phy->chg_cur.cdp_min;
  *max = usb_phy->chg_cur.cdp_max;
  break;
 case 131:
  *min = usb_phy->chg_cur.aca_min;
  *max = usb_phy->chg_cur.aca_max;
  break;
 default:
  *min = 0;
  *max = 0;
  break;
 }
}
