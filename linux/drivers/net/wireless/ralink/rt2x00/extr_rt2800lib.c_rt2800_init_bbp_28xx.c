
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int REV_RT2860C ;
 int REV_RT2860D ;
 int RT2860 ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 scalar_t__ rt2x00_rt_rev (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2800_init_bbp_28xx(struct rt2x00_dev *rt2x00dev)
{
 rt2800_bbp_write(rt2x00dev, 65, 0x2c);
 rt2800_bbp_write(rt2x00dev, 66, 0x38);

 if (rt2x00_rt_rev(rt2x00dev, RT2860, REV_RT2860C)) {
  rt2800_bbp_write(rt2x00dev, 69, 0x16);
  rt2800_bbp_write(rt2x00dev, 73, 0x12);
 } else {
  rt2800_bbp_write(rt2x00dev, 69, 0x12);
  rt2800_bbp_write(rt2x00dev, 73, 0x10);
 }

 rt2800_bbp_write(rt2x00dev, 70, 0x0a);

 rt2800_bbp_write(rt2x00dev, 81, 0x37);

 rt2800_bbp_write(rt2x00dev, 82, 0x62);

 rt2800_bbp_write(rt2x00dev, 83, 0x6a);

 if (rt2x00_rt_rev(rt2x00dev, RT2860, REV_RT2860D))
  rt2800_bbp_write(rt2x00dev, 84, 0x19);
 else
  rt2800_bbp_write(rt2x00dev, 84, 0x99);

 rt2800_bbp_write(rt2x00dev, 86, 0x00);

 rt2800_bbp_write(rt2x00dev, 91, 0x04);

 rt2800_bbp_write(rt2x00dev, 92, 0x00);

 rt2800_bbp_write(rt2x00dev, 103, 0x00);

 rt2800_bbp_write(rt2x00dev, 105, 0x05);

 rt2800_bbp_write(rt2x00dev, 106, 0x35);
}
