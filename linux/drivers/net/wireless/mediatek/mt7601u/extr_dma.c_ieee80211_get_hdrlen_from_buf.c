
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int frame_control; } ;


 unsigned int ieee80211_hdrlen (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int ieee80211_get_hdrlen_from_buf(const u8 *data, unsigned len)
{
 const struct ieee80211_hdr *hdr = (const struct ieee80211_hdr *)data;
 unsigned int hdrlen;

 if (unlikely(len < 10))
  return 0;
 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 if (unlikely(hdrlen > len))
  return 0;
 return hdrlen;
}
