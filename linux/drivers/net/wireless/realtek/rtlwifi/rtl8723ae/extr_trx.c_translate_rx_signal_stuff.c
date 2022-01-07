
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int * data; } ;
struct rx_fwinfo_8723e {int dummy; } ;
struct rtl_stats {int rx_drvinfo_size; int rx_bufshift; int icv; int crc; int hwerror; } ;
struct rtl_mac {int * bssid; } ;
struct rtl_efuse {int * dev_addr; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; int * addr3; int * addr2; int * addr1; } ;


 scalar_t__ IEEE80211_FCTL_FROMDS ;
 scalar_t__ IEEE80211_FCTL_TODS ;
 scalar_t__ IEEE80211_FTYPE_CTL ;
 scalar_t__ WLAN_FC_GET_TYPE (int ) ;
 int _rtl8723e_query_rxphystatus (struct ieee80211_hw*,struct rtl_stats*,int *,struct rx_fwinfo_8723e*,int,int,int) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 struct rtl_mac* rtl_mac (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 int rtl_process_phyinfo (struct ieee80211_hw*,int *,struct rtl_stats*) ;

__attribute__((used)) static void translate_rx_signal_stuff(struct ieee80211_hw *hw,
          struct sk_buff *skb,
          struct rtl_stats *pstatus, u8 *pdesc,
          struct rx_fwinfo_8723e *p_drvinfo)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct ieee80211_hdr *hdr;
 u8 *tmp_buf;
 u8 *praddr;

 u16 fc, type;
 bool packet_matchbssid, packet_toself, packet_beacon;

 tmp_buf = skb->data + pstatus->rx_drvinfo_size + pstatus->rx_bufshift;

 hdr = (struct ieee80211_hdr *)tmp_buf;
 fc = le16_to_cpu(hdr->frame_control);
 type = WLAN_FC_GET_TYPE(hdr->frame_control);
 praddr = hdr->addr1;

 packet_matchbssid = ((IEEE80211_FTYPE_CTL != type) &&
  (ether_addr_equal(mac->bssid, (fc & IEEE80211_FCTL_TODS) ?
   hdr->addr1 : (fc & IEEE80211_FCTL_FROMDS) ?
   hdr->addr2 : hdr->addr3)) &&
   (!pstatus->hwerror) &&
   (!pstatus->crc) && (!pstatus->icv));

 packet_toself = packet_matchbssid &&
     (ether_addr_equal(praddr, rtlefuse->dev_addr));

 if (ieee80211_is_beacon(hdr->frame_control))
  packet_beacon = 1;
 else
  packet_beacon = 0;

 _rtl8723e_query_rxphystatus(hw, pstatus, pdesc, p_drvinfo,
        packet_matchbssid, packet_toself,
        packet_beacon);

 rtl_process_phyinfo(hw, tmp_buf, pstatus);
}
