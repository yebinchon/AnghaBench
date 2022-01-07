
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u1rsvdpageloc2 ;
typedef int u1rsvdpageloc ;
struct sk_buff {int dummy; } ;
struct rtl_priv {int dummy; } ;
struct rtl_mac {int assoc_id; int bssid; int mac_addr; } ;
struct ieee80211_hw {int dummy; } ;


 int ARPRESP_PG ;
 int BEACON_PG ;
 int BT_QOSNULL_PG ;
 int COMP_CMD ;
 int COMP_ERR ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int DBG_WARNING ;
 int GTKEXT_PG ;
 int H2C_8821AE_AOAC_RSVDPAGE ;
 int H2C_8821AE_RSVDPAGE ;
 int NULL_PG ;
 int PSPOLL_PG ;
 int QOSNULL_PG ;
 int REMOTE_PG ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,int *,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int SET_80211_HDR_ADDRESS1 (int *,int ) ;
 int SET_80211_HDR_ADDRESS2 (int *,int ) ;
 int SET_80211_HDR_ADDRESS3 (int *,int ) ;
 int SET_80211_PS_POLL_AID (int *,int) ;
 int SET_80211_PS_POLL_BSSID (int *,int ) ;
 int SET_80211_PS_POLL_TA (int *,int ) ;
 int SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_ARP_RSP (int *,int) ;
 int SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_EXT_MEM (int *,int ) ;
 int SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_REMOTE_WAKE_CTRL_INFO (int *,int ) ;
 int SET_H2CCMD_RSVDPAGE_LOC_BT_QOS_NULL_DATA (int *,int) ;
 int SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA (int *,int) ;
 int SET_H2CCMD_RSVDPAGE_LOC_PSPOLL (int *,int) ;
 int SET_H2CCMD_RSVDPAGE_LOC_QOS_NULL_DATA (int *,int) ;
 int TOTAL_RESERVED_PKT_LEN_8812 ;
 struct sk_buff* dev_alloc_skb (int) ;
 int * reserved_page_packet_8812 ;
 int rtl8821ae_fill_h2c_cmd (struct ieee80211_hw*,int ,int,int *) ;
 int rtl_cmd_send_packet (struct ieee80211_hw*,struct sk_buff*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int skb_put_data (struct sk_buff*,int **,int) ;

void rtl8812ae_set_fw_rsvdpagepkt(struct ieee80211_hw *hw,
      bool b_dl_finished, bool dl_whole_packets)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtlpriv);
 struct sk_buff *skb = ((void*)0);
 u32 totalpacketlen;
 bool rtstatus;
 u8 u1rsvdpageloc[5] = { 0 };
 u8 u1rsvdpageloc2[7] = { 0 };
 bool b_dlok = 0;
 u8 *beacon;
 u8 *p_pspoll;
 u8 *nullfunc;
 u8 *qosnull;
 u8 *btqosnull;
 u8 *arpresp;





 beacon = &reserved_page_packet_8812[BEACON_PG * 512];
 SET_80211_HDR_ADDRESS2(beacon, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(beacon, mac->bssid);

 if (b_dl_finished) {
  totalpacketlen = 512 - 40;
  goto out;
 }




 p_pspoll = &reserved_page_packet_8812[PSPOLL_PG * 512];
 SET_80211_PS_POLL_AID(p_pspoll, (mac->assoc_id | 0xc000));
 SET_80211_PS_POLL_BSSID(p_pspoll, mac->bssid);
 SET_80211_PS_POLL_TA(p_pspoll, mac->mac_addr);

 SET_H2CCMD_RSVDPAGE_LOC_PSPOLL(u1rsvdpageloc, PSPOLL_PG);





 nullfunc = &reserved_page_packet_8812[NULL_PG * 512];
 SET_80211_HDR_ADDRESS1(nullfunc, mac->bssid);
 SET_80211_HDR_ADDRESS2(nullfunc, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(nullfunc, mac->bssid);

 SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA(u1rsvdpageloc, NULL_PG);





 qosnull = &reserved_page_packet_8812[QOSNULL_PG * 512];
 SET_80211_HDR_ADDRESS1(qosnull, mac->bssid);
 SET_80211_HDR_ADDRESS2(qosnull, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(qosnull, mac->bssid);

 SET_H2CCMD_RSVDPAGE_LOC_QOS_NULL_DATA(u1rsvdpageloc, QOSNULL_PG);





 btqosnull = &reserved_page_packet_8812[BT_QOSNULL_PG * 512];
 SET_80211_HDR_ADDRESS1(btqosnull, mac->bssid);
 SET_80211_HDR_ADDRESS2(btqosnull, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(btqosnull, mac->bssid);

 SET_H2CCMD_RSVDPAGE_LOC_BT_QOS_NULL_DATA(u1rsvdpageloc, BT_QOSNULL_PG);

 if (!dl_whole_packets) {
  totalpacketlen = 512 * (BT_QOSNULL_PG + 1) - 40;
  goto out;
 }




 arpresp = &reserved_page_packet_8812[ARPRESP_PG * 512];
 SET_80211_HDR_ADDRESS1(arpresp, mac->bssid);
 SET_80211_HDR_ADDRESS2(arpresp, mac->mac_addr);
 SET_80211_HDR_ADDRESS3(arpresp, mac->bssid);

 SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_ARP_RSP(u1rsvdpageloc2, ARPRESP_PG);





 SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_REMOTE_WAKE_CTRL_INFO(u1rsvdpageloc2,
        REMOTE_PG);





 SET_8821AE_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_EXT_MEM(u1rsvdpageloc2, GTKEXT_PG);

 totalpacketlen = TOTAL_RESERVED_PKT_LEN_8812 - 40;

out:
 RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD,
        "rtl8812ae_set_fw_rsvdpagepkt(): packet data\n",
        &reserved_page_packet_8812[0], totalpacketlen);

 skb = dev_alloc_skb(totalpacketlen);
 if (!skb)
  return;
 skb_put_data(skb, &reserved_page_packet_8812, totalpacketlen);

 rtstatus = rtl_cmd_send_packet(hw, skb);

 if (rtstatus)
  b_dlok = 1;

 if (!b_dl_finished && b_dlok) {
  RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_DMESG,
         "H2C_RSVDPAGE:\n", u1rsvdpageloc, 5);
  rtl8821ae_fill_h2c_cmd(hw, H2C_8821AE_RSVDPAGE,
           sizeof(u1rsvdpageloc), u1rsvdpageloc);
  if (dl_whole_packets) {
   RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_DMESG,
          "wowlan H2C_RSVDPAGE:\n", u1rsvdpageloc2, 7);
   rtl8821ae_fill_h2c_cmd(hw, H2C_8821AE_AOAC_RSVDPAGE,
            sizeof(u1rsvdpageloc2), u1rsvdpageloc2);
  }
 }

 if (!b_dlok)
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "Set RSVD page location to Fw FAIL!!!!!!.\n");
}
