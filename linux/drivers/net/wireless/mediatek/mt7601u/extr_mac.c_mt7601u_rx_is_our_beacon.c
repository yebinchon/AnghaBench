
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int ap_bssid; } ;
struct ieee80211_hdr {int addr2; int frame_control; } ;


 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;

__attribute__((used)) static int
mt7601u_rx_is_our_beacon(struct mt7601u_dev *dev, u8 *data)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)data;

 return ieee80211_is_beacon(hdr->frame_control) &&
  ether_addr_equal(hdr->addr2, dev->ap_bssid);
}
