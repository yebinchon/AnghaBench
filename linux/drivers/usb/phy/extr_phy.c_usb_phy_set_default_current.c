
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aca_max; int aca_min; int cdp_max; int cdp_min; int dcp_max; int dcp_min; int sdp_max; int sdp_min; } ;
struct usb_phy {TYPE_1__ chg_cur; } ;


 int DEFAULT_ACA_CUR_MAX ;
 int DEFAULT_ACA_CUR_MIN ;
 int DEFAULT_CDP_CUR_MAX ;
 int DEFAULT_CDP_CUR_MIN ;
 int DEFAULT_DCP_CUR_MAX ;
 int DEFAULT_DCP_CUR_MIN ;
 int DEFAULT_SDP_CUR_MAX ;
 int DEFAULT_SDP_CUR_MIN ;

__attribute__((used)) static void usb_phy_set_default_current(struct usb_phy *usb_phy)
{
 usb_phy->chg_cur.sdp_min = DEFAULT_SDP_CUR_MIN;
 usb_phy->chg_cur.sdp_max = DEFAULT_SDP_CUR_MAX;
 usb_phy->chg_cur.dcp_min = DEFAULT_DCP_CUR_MIN;
 usb_phy->chg_cur.dcp_max = DEFAULT_DCP_CUR_MAX;
 usb_phy->chg_cur.cdp_min = DEFAULT_CDP_CUR_MIN;
 usb_phy->chg_cur.cdp_max = DEFAULT_CDP_CUR_MAX;
 usb_phy->chg_cur.aca_min = DEFAULT_ACA_CUR_MIN;
 usb_phy->chg_cur.aca_max = DEFAULT_ACA_CUR_MAX;
}
