
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;
struct rf_channel {int channel; } ;


 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2800_bbp_write_with_rx_chain (struct rt2x00_dev*,int,int) ;

__attribute__((used)) static void rt3883_bbp_adjust(struct rt2x00_dev *rt2x00dev,
         struct rf_channel *rf)
{
 u8 bbp;

 bbp = (rf->channel > 14) ? 0x48 : 0x38;
 rt2800_bbp_write_with_rx_chain(rt2x00dev, 66, bbp);

 rt2800_bbp_write(rt2x00dev, 69, 0x12);

 if (rf->channel <= 14) {
  rt2800_bbp_write(rt2x00dev, 70, 0x0a);
 } else {

  rt2800_bbp_write(rt2x00dev, 70, 0x00);
 }

 rt2800_bbp_write(rt2x00dev, 73, 0x10);

 if (rf->channel > 14) {
  rt2800_bbp_write(rt2x00dev, 62, 0x1d);
  rt2800_bbp_write(rt2x00dev, 63, 0x1d);
  rt2800_bbp_write(rt2x00dev, 64, 0x1d);
 } else {
  rt2800_bbp_write(rt2x00dev, 62, 0x2d);
  rt2800_bbp_write(rt2x00dev, 63, 0x2d);
  rt2800_bbp_write(rt2x00dev, 64, 0x2d);
 }
}
