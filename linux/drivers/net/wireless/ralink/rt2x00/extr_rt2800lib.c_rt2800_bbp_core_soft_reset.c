
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int BBP4_BANDWIDTH ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_write (struct rt2x00_dev*,int,int) ;
 int rt2x00_set_field8 (int*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rt2800_bbp_core_soft_reset(struct rt2x00_dev *rt2x00dev,
           bool set_bw, bool is_ht40)
{
 u8 bbp_val;

 bbp_val = rt2800_bbp_read(rt2x00dev, 21);
 bbp_val |= 0x1;
 rt2800_bbp_write(rt2x00dev, 21, bbp_val);
 usleep_range(100, 200);

 if (set_bw) {
  bbp_val = rt2800_bbp_read(rt2x00dev, 4);
  rt2x00_set_field8(&bbp_val, BBP4_BANDWIDTH, 2 * is_ht40);
  rt2800_bbp_write(rt2x00dev, 4, bbp_val);
  usleep_range(100, 200);
 }

 bbp_val = rt2800_bbp_read(rt2x00dev, 21);
 bbp_val &= (~0x1);
 rt2800_bbp_write(rt2x00dev, 21, bbp_val);
 usleep_range(100, 200);
}
