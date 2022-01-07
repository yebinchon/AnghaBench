
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int * data; } ;
struct rx_fwinfo {int dummy; } ;
struct rtl_stats {int rx_drvinfo_size; int rx_bufshift; int icv; int crc; int hwerror; } ;
struct rtl_mac {int * bssid; } ;
struct rtl_efuse {int * dev_addr; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int * addr3; int * addr2; int * addr1; int frame_control; } ;
typedef int __le16 ;


 scalar_t__ IEEE80211_FCTL_FROMDS ;
 scalar_t__ IEEE80211_FCTL_TODS ;
 scalar_t__ IEEE80211_FTYPE_CTL ;
 scalar_t__ WLAN_FC_GET_TYPE (int ) ;
 int _rtl92se_query_rxphystatus (struct ieee80211_hw*,struct rtl_stats*,int *,struct rx_fwinfo*,int,int,int) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 struct rtl_mac* rtl_mac (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 int rtl_process_phyinfo (struct ieee80211_hw*,int *,struct rtl_stats*) ;

__attribute__((used)) static void _rtl92se_translate_rx_signal_stuff(struct ieee80211_hw *hw,
  struct sk_buff *skb, struct rtl_stats *pstats,
  u8 *pdesc, struct rx_fwinfo *p_drvinfo)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));

 struct ieee80211_hdr *hdr;
 u8 *tmp_buf;
 u8 *praddr;
 __le16 fc;
 u16 type, cfc;
 bool packet_matchbssid, packet_toself, packet_beacon = 0;

 tmp_buf = skb->data + pstats->rx_drvinfo_size + pstats->rx_bufshift;

 hdr = (struct ieee80211_hdr *)tmp_buf;
 fc = hdr->frame_control;
 cfc = le16_to_cpu(fc);
 type = WLAN_FC_GET_TYPE(fc);
 praddr = hdr->addr1;

 packet_matchbssid = ((IEEE80211_FTYPE_CTL != type) &&
      ether_addr_equal(mac->bssid,
         (cfc & IEEE80211_FCTL_TODS) ? hdr->addr1 :
         (cfc & IEEE80211_FCTL_FROMDS) ? hdr->addr2 :
         hdr->addr3) &&
      (!pstats->hwerror) && (!pstats->crc) && (!pstats->icv));

 packet_toself = packet_matchbssid &&
     ether_addr_equal(praddr, rtlefuse->dev_addr);

 if (ieee80211_is_beacon(fc))
  packet_beacon = 1;

 _rtl92se_query_rxphystatus(hw, pstats, pdesc, p_drvinfo,
   packet_matchbssid, packet_toself, packet_beacon);
 rtl_process_phyinfo(hw, tmp_buf, pstats);
}
