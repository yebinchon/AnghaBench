
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct rtl_mac {int assoc_id; TYPE_2__* vif; int * bssid; } ;
struct ieee80211_hw {int dummy; } ;
struct h2c_joinbss_rpt_parm {int * bssid; void* ps_qos_info; void* opmode; } ;
struct TYPE_3__ {int beacon_int; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;


 int FW_H2C_JOINBSSRPT ;
 int SET_BITS_TO_LE_2BYTE (void**,int ,int,int ) ;
 int _rtl92s_firmware_set_h2c_cmd (struct ieee80211_hw*,int ,void**) ;
 struct rtl_mac* rtl_mac (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

void rtl92s_set_fw_joinbss_report_cmd(struct ieee80211_hw *hw,
  u8 mstatus, u8 ps_qosinfo)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct h2c_joinbss_rpt_parm joinbss_rpt;

 joinbss_rpt.opmode = mstatus;
 joinbss_rpt.ps_qos_info = ps_qosinfo;
 joinbss_rpt.bssid[0] = mac->bssid[0];
 joinbss_rpt.bssid[1] = mac->bssid[1];
 joinbss_rpt.bssid[2] = mac->bssid[2];
 joinbss_rpt.bssid[3] = mac->bssid[3];
 joinbss_rpt.bssid[4] = mac->bssid[4];
 joinbss_rpt.bssid[5] = mac->bssid[5];
 SET_BITS_TO_LE_2BYTE((u8 *)(&joinbss_rpt) + 8, 0, 16,
   mac->vif->bss_conf.beacon_int);
 SET_BITS_TO_LE_2BYTE((u8 *)(&joinbss_rpt) + 10, 0, 16, mac->assoc_id);

 _rtl92s_firmware_set_h2c_cmd(hw, FW_H2C_JOINBSSRPT, (u8 *)&joinbss_rpt);
}
