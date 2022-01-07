
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int * data; } ;
struct rx_fwinfo {int dummy; } ;
struct rtl_stats {int rx_drvinfo_size; int rx_bufshift; int icv; int crc; int hwerror; int psaddr; } ;
struct rtl_mac {int * bssid; } ;
struct rtl_efuse {int * dev_addr; } ;
struct ieee80211_qos_hdr {int qos_ctrl; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int frame_control; int * addr3; int * addr2; int * addr1; } ;
typedef int __le16 ;
struct TYPE_6__ {int num_non_be_pkt; int num_qry_beacon_pkt; } ;
struct TYPE_7__ {TYPE_1__ dbginfo; } ;
struct TYPE_8__ {TYPE_2__ dm; } ;


 int _rtl92ee_query_rxphystatus (struct ieee80211_hw*,struct rtl_stats*,int *,struct rx_fwinfo*,int,int,int) ;
 int ether_addr_copy (int ,int *) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 int ieee80211_get_DA (struct ieee80211_hdr*) ;
 int * ieee80211_get_SA (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_has_fromds (int ) ;
 scalar_t__ ieee80211_has_tods (int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 int ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int is_multicast_ether_addr (int ) ;
 int le16_to_cpu (int ) ;
 struct rtl_efuse* rtl_efuse (TYPE_3__*) ;
 struct rtl_mac* rtl_mac (TYPE_3__*) ;
 TYPE_3__* rtl_priv (struct ieee80211_hw*) ;
 int rtl_process_phyinfo (struct ieee80211_hw*,int *,struct rtl_stats*) ;

__attribute__((used)) static void _rtl92ee_translate_rx_signal_stuff(struct ieee80211_hw *hw,
            struct sk_buff *skb,
            struct rtl_stats *pstatus,
            u8 *pdesc,
            struct rx_fwinfo *p_drvinfo)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct ieee80211_hdr *hdr;
 u8 *tmp_buf;
 u8 *praddr;
 u8 *psaddr;
 __le16 fc;
 bool packet_matchbssid, packet_toself, packet_beacon;

 tmp_buf = skb->data + pstatus->rx_drvinfo_size +
    pstatus->rx_bufshift + 24;

 hdr = (struct ieee80211_hdr *)tmp_buf;
 fc = hdr->frame_control;
 praddr = hdr->addr1;
 psaddr = ieee80211_get_SA(hdr);
 ether_addr_copy(pstatus->psaddr, psaddr);

 packet_matchbssid = (!ieee80211_is_ctl(fc) &&
          (ether_addr_equal(mac->bssid,
      ieee80211_has_tods(fc) ?
      hdr->addr1 :
      ieee80211_has_fromds(fc) ?
      hdr->addr2 : hdr->addr3)) &&
    (!pstatus->hwerror) && (!pstatus->crc) &&
    (!pstatus->icv));

 packet_toself = packet_matchbssid &&
    (ether_addr_equal(praddr, rtlefuse->dev_addr));

 if (ieee80211_is_beacon(fc))
  packet_beacon = 1;
 else
  packet_beacon = 0;

 if (packet_beacon && packet_matchbssid)
  rtl_priv(hw)->dm.dbginfo.num_qry_beacon_pkt++;

 if (packet_matchbssid && ieee80211_is_data_qos(hdr->frame_control) &&
     !is_multicast_ether_addr(ieee80211_get_DA(hdr))) {
  struct ieee80211_qos_hdr *hdr_qos =
         (struct ieee80211_qos_hdr *)tmp_buf;
  u16 tid = le16_to_cpu(hdr_qos->qos_ctrl) & 0xf;

  if (tid != 0 && tid != 3)
   rtl_priv(hw)->dm.dbginfo.num_non_be_pkt++;
 }

 _rtl92ee_query_rxphystatus(hw, pstatus, pdesc, p_drvinfo,
       packet_matchbssid, packet_toself,
       packet_beacon);
 rtl_process_phyinfo(hw, tmp_buf, pstatus);
}
