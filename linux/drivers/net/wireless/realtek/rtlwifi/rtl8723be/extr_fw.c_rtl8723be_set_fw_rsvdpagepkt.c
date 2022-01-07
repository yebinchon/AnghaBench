
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u1rsvdpageloc ;
struct sk_buff {int dummy; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int assoc_id; int bssid; int mac_addr; } ;
struct ieee80211_hw {int dummy; } ;


 int BEACON_PG ;
 int BT_QOS_NULL_PG ;
 int COMP_CMD ;
 int COMP_ERR ;
 int COMP_POWER ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int DBG_WARNING ;
 int H2C_8723B_RSVDPAGE ;
 int NULL_PG ;
 int PROBERSP_PG ;
 int PSPOLL_PG ;
 int QOS_NULL_PG ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,int *,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int SET_80211_HDR_ADDRESS1 (int *,int ) ;
 int SET_80211_HDR_ADDRESS2 (int *,int ) ;
 int SET_80211_HDR_ADDRESS3 (int *,int ) ;
 int SET_80211_PS_POLL_AID (int *,int) ;
 int SET_80211_PS_POLL_BSSID (int *,int ) ;
 int SET_80211_PS_POLL_TA (int *,int ) ;
 int SET_H2CCMD_RSVDPAGE_LOC_BT_QOS_NULL_DATA (int *,int) ;
 int SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA (int *,int) ;
 int SET_H2CCMD_RSVDPAGE_LOC_PROBE_RSP (int *,int) ;
 int SET_H2CCMD_RSVDPAGE_LOC_PSPOLL (int *,int) ;
 int SET_H2CCMD_RSVDPAGE_LOC_QOS_NULL_DATA (int *,int) ;
 int TOTAL_RESERVED_PKT_LEN ;
 struct sk_buff* dev_alloc_skb (int) ;
 int * reserved_page_packet ;
 int rtl8723be_fill_h2c_cmd (struct ieee80211_hw*,int ,int,int *) ;
 int rtl_cmd_send_packet (struct ieee80211_hw*,struct sk_buff*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int skb_put_data (struct sk_buff*,int **,int) ;

void rtl8723be_set_fw_rsvdpagepkt(struct ieee80211_hw *hw,
      bool b_dl_finished)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct sk_buff *skb = ((void*)0);

 u32 totalpacketlen;
 bool rtstatus;
 u8 u1rsvdpageloc[5] = { 0 };
 bool b_dlok = 0;

 u8 *beacon;
 u8 *p_pspoll;
 u8 *nullfunc;
 u8 *p_probersp;
 u8 *qosnull;
 u8 *btqosnull;




 beacon = &reserved_page_packet[BEACON_PG * 128];
 SET_80211_HDR_ADDRESS2(beacon, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(beacon, mac->bssid);





 p_pspoll = &reserved_page_packet[PSPOLL_PG * 128];
 SET_80211_PS_POLL_AID(p_pspoll, (mac->assoc_id | 0xc000));
 SET_80211_PS_POLL_BSSID(p_pspoll, mac->bssid);
 SET_80211_PS_POLL_TA(p_pspoll, mac->mac_addr);

 SET_H2CCMD_RSVDPAGE_LOC_PSPOLL(u1rsvdpageloc, PSPOLL_PG);





 nullfunc = &reserved_page_packet[NULL_PG * 128];
 SET_80211_HDR_ADDRESS1(nullfunc, mac->bssid);
 SET_80211_HDR_ADDRESS2(nullfunc, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(nullfunc, mac->bssid);

 SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA(u1rsvdpageloc, NULL_PG);





 p_probersp = &reserved_page_packet[PROBERSP_PG * 128];
 SET_80211_HDR_ADDRESS1(p_probersp, mac->bssid);
 SET_80211_HDR_ADDRESS2(p_probersp, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(p_probersp, mac->bssid);

 SET_H2CCMD_RSVDPAGE_LOC_PROBE_RSP(u1rsvdpageloc, PROBERSP_PG);





 qosnull = &reserved_page_packet[QOS_NULL_PG * 128];
 SET_80211_HDR_ADDRESS1(qosnull, mac->bssid);
 SET_80211_HDR_ADDRESS2(qosnull, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(qosnull, mac->bssid);

 SET_H2CCMD_RSVDPAGE_LOC_QOS_NULL_DATA(u1rsvdpageloc, QOS_NULL_PG);





 btqosnull = &reserved_page_packet[BT_QOS_NULL_PG * 128];
 SET_80211_HDR_ADDRESS1(btqosnull, mac->bssid);
 SET_80211_HDR_ADDRESS2(btqosnull, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(btqosnull, mac->bssid);

 SET_H2CCMD_RSVDPAGE_LOC_BT_QOS_NULL_DATA(u1rsvdpageloc, BT_QOS_NULL_PG);

 totalpacketlen = TOTAL_RESERVED_PKT_LEN;

 RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD,
        "rtl8723be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
        &reserved_page_packet[0], totalpacketlen);
 RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_DMESG,
        "rtl8723be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
        u1rsvdpageloc, sizeof(u1rsvdpageloc));

 skb = dev_alloc_skb(totalpacketlen);
 if (!skb)
  return;
 skb_put_data(skb, &reserved_page_packet, totalpacketlen);

 rtstatus = rtl_cmd_send_packet(hw, skb);

 if (rtstatus)
  b_dlok = 1;

 if (b_dlok) {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "Set RSVD page location to Fw.\n");
  RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_DMESG, "H2C_RSVDPAGE:\n",
         u1rsvdpageloc, sizeof(u1rsvdpageloc));
  rtl8723be_fill_h2c_cmd(hw, H2C_8723B_RSVDPAGE,
           sizeof(u1rsvdpageloc), u1rsvdpageloc);
 } else
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "Set RSVD page location to Fw FAIL!!!!!!.\n");
}
