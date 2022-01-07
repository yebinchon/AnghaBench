
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int * data; } ;
struct rx_fwinfo_88e {int dummy; } ;
struct rtl_stats {int rx_drvinfo_size; int rx_bufshift; int icv; int crc; int hwerror; int psaddr; } ;
struct rtl_mac {int * bssid; } ;
struct rtl_efuse {int * dev_addr; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; int * addr3; int * addr2; int * addr1; } ;
typedef int __le32 ;
typedef int __le16 ;


 int ETH_ALEN ;
 int _rtl88ee_query_rxphystatus (struct ieee80211_hw*,struct rtl_stats*,int *,struct rx_fwinfo_88e*,int,int,int) ;
 int _rtl88ee_smart_antenna (struct ieee80211_hw*,struct rtl_stats*) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 int * ieee80211_get_SA (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_has_fromds (int ) ;
 scalar_t__ ieee80211_has_tods (int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 int ieee80211_is_ctl (int ) ;
 int memcpy (int ,int *,int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 struct rtl_mac* rtl_mac (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 int rtl_process_phyinfo (struct ieee80211_hw*,int *,struct rtl_stats*) ;

__attribute__((used)) static void _rtl88ee_translate_rx_signal_stuff(struct ieee80211_hw *hw,
            struct sk_buff *skb,
            struct rtl_stats *pstatus,
            __le32 *pdesc,
            struct rx_fwinfo_88e *p_drvinfo)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct ieee80211_hdr *hdr;
 u8 *tmp_buf;
 u8 *praddr;
 u8 *psaddr;
 __le16 fc;
 bool packet_matchbssid, packet_toself, packet_beacon;

 tmp_buf = skb->data + pstatus->rx_drvinfo_size + pstatus->rx_bufshift;

 hdr = (struct ieee80211_hdr *)tmp_buf;
 fc = hdr->frame_control;
 praddr = hdr->addr1;
 psaddr = ieee80211_get_SA(hdr);
 memcpy(pstatus->psaddr, psaddr, ETH_ALEN);

 packet_matchbssid = ((!ieee80211_is_ctl(fc)) &&
      (ether_addr_equal(mac->bssid, ieee80211_has_tods(fc) ?
          hdr->addr1 : ieee80211_has_fromds(fc) ?
          hdr->addr2 : hdr->addr3)) &&
          (!pstatus->hwerror) &&
          (!pstatus->crc) && (!pstatus->icv));

 packet_toself = packet_matchbssid &&
     (ether_addr_equal(praddr, rtlefuse->dev_addr));

 if (ieee80211_is_beacon(hdr->frame_control))
  packet_beacon = 1;
 else
  packet_beacon = 0;

 _rtl88ee_query_rxphystatus(hw, pstatus, pdesc, p_drvinfo,
       packet_matchbssid, packet_toself,
       packet_beacon);
 _rtl88ee_smart_antenna(hw, pstatus);
 rtl_process_phyinfo(hw, tmp_buf, pstatus);
}
