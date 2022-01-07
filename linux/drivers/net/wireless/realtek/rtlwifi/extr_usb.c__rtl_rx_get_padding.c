
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int frame_control; } ;


 int IEEE80211_QOS_CTL_A_MSDU_PRESENT ;
 unsigned int NET_IP_ALIGN ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_has_a4 (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;

__attribute__((used)) static unsigned int _rtl_rx_get_padding(struct ieee80211_hdr *hdr,
     unsigned int len)
{





 if (NET_IP_ALIGN == 0 || len < sizeof(*hdr))
  return 0;
}
