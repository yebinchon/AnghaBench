
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int sdp_max; unsigned int dcp_max; unsigned int cdp_max; unsigned int aca_max; } ;
struct usb_phy {int chg_type; int chg_work; TYPE_1__ chg_cur; } ;





 unsigned int DEFAULT_ACA_CUR_MAX ;
 unsigned int DEFAULT_CDP_CUR_MAX ;
 unsigned int DEFAULT_DCP_CUR_MAX ;
 unsigned int DEFAULT_SDP_CUR_MAX_SS ;

 int schedule_work (int *) ;

void usb_phy_set_charger_current(struct usb_phy *usb_phy, unsigned int mA)
{
 switch (usb_phy->chg_type) {
 case 128:
  if (usb_phy->chg_cur.sdp_max == mA)
   return;

  usb_phy->chg_cur.sdp_max = (mA > DEFAULT_SDP_CUR_MAX_SS) ?
   DEFAULT_SDP_CUR_MAX_SS : mA;
  break;
 case 129:
  if (usb_phy->chg_cur.dcp_max == mA)
   return;

  usb_phy->chg_cur.dcp_max = (mA > DEFAULT_DCP_CUR_MAX) ?
   DEFAULT_DCP_CUR_MAX : mA;
  break;
 case 130:
  if (usb_phy->chg_cur.cdp_max == mA)
   return;

  usb_phy->chg_cur.cdp_max = (mA > DEFAULT_CDP_CUR_MAX) ?
   DEFAULT_CDP_CUR_MAX : mA;
  break;
 case 131:
  if (usb_phy->chg_cur.aca_max == mA)
   return;

  usb_phy->chg_cur.aca_max = (mA > DEFAULT_ACA_CUR_MAX) ?
   DEFAULT_ACA_CUR_MAX : mA;
  break;
 default:
  return;
 }

 schedule_work(&usb_phy->chg_work);
}
