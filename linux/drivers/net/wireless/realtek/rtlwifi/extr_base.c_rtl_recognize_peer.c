
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int bssid; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct rtl_mac {scalar_t__ opmode; scalar_t__ link_state; scalar_t__ vendor; int cnt_after_linked; int bssid; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int addr3; int frame_control; } ;


 int COMP_MAC80211 ;
 int DBG_LOUD ;
 int FCS_LEN ;
 scalar_t__ MAC80211_NOLINK ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ PEER_ATH ;
 scalar_t__ PEER_BROAD ;
 scalar_t__ PEER_CISCO ;
 scalar_t__ PEER_MARV ;
 scalar_t__ PEER_RAL ;
 void* PEER_UNKNOWN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int ether_addr_equal_64bits (int ,int ) ;
 int ieee80211_is_beacon (int ) ;
 scalar_t__ memcmp (int ,int*,int) ;
 scalar_t__ rtl_find_221_ie (struct ieee80211_hw*,int*,unsigned int) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_recognize_peer(struct ieee80211_hw *hw, u8 *data, unsigned int len)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct ieee80211_hdr *hdr = (void *)data;
 u32 vendor = PEER_UNKNOWN;

 static u8 ap3_1[3] = { 0x00, 0x14, 0xbf };
 static u8 ap3_2[3] = { 0x00, 0x1a, 0x70 };
 static u8 ap3_3[3] = { 0x00, 0x1d, 0x7e };
 static u8 ap4_1[3] = { 0x00, 0x90, 0xcc };
 static u8 ap4_2[3] = { 0x00, 0x0e, 0x2e };
 static u8 ap4_3[3] = { 0x00, 0x18, 0x02 };
 static u8 ap4_4[3] = { 0x00, 0x17, 0x3f };
 static u8 ap4_5[3] = { 0x00, 0x1c, 0xdf };
 static u8 ap5_1[3] = { 0x00, 0x1c, 0xf0 };
 static u8 ap5_2[3] = { 0x00, 0x21, 0x91 };
 static u8 ap5_3[3] = { 0x00, 0x24, 0x01 };
 static u8 ap5_4[3] = { 0x00, 0x15, 0xe9 };
 static u8 ap5_5[3] = { 0x00, 0x17, 0x9A };
 static u8 ap5_6[3] = { 0x00, 0x18, 0xE7 };
 static u8 ap6_1[3] = { 0x00, 0x17, 0x94 };
 static u8 ap7_1[3] = { 0x00, 0x14, 0xa4 };

 if (mac->opmode != NL80211_IFTYPE_STATION)
  return;

 if (mac->link_state == MAC80211_NOLINK) {
  mac->vendor = PEER_UNKNOWN;
  return;
 }

 if (mac->cnt_after_linked > 2)
  return;


 if (!ieee80211_is_beacon(hdr->frame_control))
  return;


 if (len <= 40 + FCS_LEN)
  return;


 if (!ether_addr_equal_64bits(hdr->addr3, rtlpriv->mac80211.bssid))
  return;

 if (rtl_find_221_ie(hw, data, len))
  vendor = mac->vendor;

 if ((memcmp(mac->bssid, ap5_1, 3) == 0) ||
  (memcmp(mac->bssid, ap5_2, 3) == 0) ||
  (memcmp(mac->bssid, ap5_3, 3) == 0) ||
  (memcmp(mac->bssid, ap5_4, 3) == 0) ||
  (memcmp(mac->bssid, ap5_5, 3) == 0) ||
  (memcmp(mac->bssid, ap5_6, 3) == 0) ||
  vendor == PEER_ATH) {
  vendor = PEER_ATH;
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD, "=>ath find\n");
 } else if ((memcmp(mac->bssid, ap4_4, 3) == 0) ||
  (memcmp(mac->bssid, ap4_5, 3) == 0) ||
  (memcmp(mac->bssid, ap4_1, 3) == 0) ||
  (memcmp(mac->bssid, ap4_2, 3) == 0) ||
  (memcmp(mac->bssid, ap4_3, 3) == 0) ||
  vendor == PEER_RAL) {
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD, "=>ral find\n");
  vendor = PEER_RAL;
 } else if (memcmp(mac->bssid, ap6_1, 3) == 0 ||
  vendor == PEER_CISCO) {
  vendor = PEER_CISCO;
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD, "=>cisco find\n");
 } else if ((memcmp(mac->bssid, ap3_1, 3) == 0) ||
  (memcmp(mac->bssid, ap3_2, 3) == 0) ||
  (memcmp(mac->bssid, ap3_3, 3) == 0) ||
  vendor == PEER_BROAD) {
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD, "=>broad find\n");
  vendor = PEER_BROAD;
 } else if (memcmp(mac->bssid, ap7_1, 3) == 0 ||
  vendor == PEER_MARV) {
  vendor = PEER_MARV;
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD, "=>marv find\n");
 }

 mac->vendor = vendor;
}
