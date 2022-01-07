
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int curr_band; } ;
struct antenna_setup {int rx; } ;





 int BBP_R3_SMART_MODE ;
 int BBP_R4_RX_ANTENNA_CONTROL ;
 int BBP_R4_RX_FRAME_END ;
 int BBP_R77_RX_ANTENNA ;
 int NL80211_BAND_5GHZ ;
 int rt2x00_has_cap_frame_type (struct rt2x00_dev*) ;
 int rt2x00_set_field8 (int*,int ,int) ;
 int rt73usb_bbp_read (struct rt2x00_dev*,int) ;
 int rt73usb_bbp_write (struct rt2x00_dev*,int,int) ;

__attribute__((used)) static void rt73usb_config_antenna_5x(struct rt2x00_dev *rt2x00dev,
          struct antenna_setup *ant)
{
 u8 r3;
 u8 r4;
 u8 r77;
 u8 temp;

 r3 = rt73usb_bbp_read(rt2x00dev, 3);
 r4 = rt73usb_bbp_read(rt2x00dev, 4);
 r77 = rt73usb_bbp_read(rt2x00dev, 77);

 rt2x00_set_field8(&r3, BBP_R3_SMART_MODE, 0);




 switch (ant->rx) {
 case 128:
  rt2x00_set_field8(&r4, BBP_R4_RX_ANTENNA_CONTROL, 2);
  temp = !rt2x00_has_cap_frame_type(rt2x00dev) &&
         (rt2x00dev->curr_band != NL80211_BAND_5GHZ);
  rt2x00_set_field8(&r4, BBP_R4_RX_FRAME_END, temp);
  break;
 case 130:
  rt2x00_set_field8(&r4, BBP_R4_RX_ANTENNA_CONTROL, 1);
  rt2x00_set_field8(&r4, BBP_R4_RX_FRAME_END, 0);
  if (rt2x00dev->curr_band == NL80211_BAND_5GHZ)
   rt2x00_set_field8(&r77, BBP_R77_RX_ANTENNA, 0);
  else
   rt2x00_set_field8(&r77, BBP_R77_RX_ANTENNA, 3);
  break;
 case 129:
 default:
  rt2x00_set_field8(&r4, BBP_R4_RX_ANTENNA_CONTROL, 1);
  rt2x00_set_field8(&r4, BBP_R4_RX_FRAME_END, 0);
  if (rt2x00dev->curr_band == NL80211_BAND_5GHZ)
   rt2x00_set_field8(&r77, BBP_R77_RX_ANTENNA, 3);
  else
   rt2x00_set_field8(&r77, BBP_R77_RX_ANTENNA, 0);
  break;
 }

 rt73usb_bbp_write(rt2x00dev, 77, r77);
 rt73usb_bbp_write(rt2x00dev, 3, r3);
 rt73usb_bbp_write(rt2x00dev, 4, r4);
}
