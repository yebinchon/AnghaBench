
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {int curr_band; TYPE_1__ chip; } ;
struct link_qual {int rssi; } ;


 int NL80211_BAND_2GHZ ;
 int REV_RT2860C ;
 int RT2860 ;




 int rt2800_get_default_vgc (struct rt2x00_dev*) ;
 int rt2800_set_vgc (struct rt2x00_dev*,struct link_qual*,int) ;
 scalar_t__ rt2x00_rt_rev (struct rt2x00_dev*,int ,int ) ;

void rt2800_link_tuner(struct rt2x00_dev *rt2x00dev, struct link_qual *qual,
         const u32 count)
{
 u8 vgc;

 if (rt2x00_rt_rev(rt2x00dev, RT2860, REV_RT2860C))
  return;






 vgc = rt2800_get_default_vgc(rt2x00dev);

 switch (rt2x00dev->chip.rt) {
 case 131:
 case 130:
  if (qual->rssi > -65) {
   if (rt2x00dev->curr_band == NL80211_BAND_2GHZ)
    vgc += 0x20;
   else
    vgc += 0x10;
  }
  break;

 case 129:
  if (qual->rssi > -65)
   vgc += 0x10;
  break;

 case 128:
  if (qual->rssi > -65)
   vgc += 0x20;
  break;

 default:
  if (qual->rssi > -80)
   vgc += 0x10;
  break;
 }

 rt2800_set_vgc(rt2x00dev, qual, vgc);
}
