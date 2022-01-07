
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int * addr3; int * addr2; int * addr1; int frame_control; } ;
typedef int __le16 ;


 scalar_t__ ieee80211_has_fromds (int ) ;
 scalar_t__ ieee80211_has_tods (int ) ;

__attribute__((used)) static inline u8 *get_hdr_bssid(struct ieee80211_hdr *hdr)
{
 __le16 fc = hdr->frame_control;
 u8 *bssid;

 if (ieee80211_has_tods(fc))
  bssid = hdr->addr1;
 else if (ieee80211_has_fromds(fc))
  bssid = hdr->addr2;
 else
  bssid = hdr->addr3;

 return bssid;
}
