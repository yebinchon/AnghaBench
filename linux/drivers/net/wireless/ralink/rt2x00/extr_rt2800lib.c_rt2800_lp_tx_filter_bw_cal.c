
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int rt2800_bbp_dcoc_read (struct rt2x00_dev*,int) ;
 int rt2800_bbp_dcoc_write (struct rt2x00_dev*,int ,int) ;
 int rt2800_bbp_read (struct rt2x00_dev*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static char rt2800_lp_tx_filter_bw_cal(struct rt2x00_dev *rt2x00dev)
{
 unsigned int cnt;
 u8 bbp_val;
 char cal_val;

 rt2800_bbp_dcoc_write(rt2x00dev, 0, 0x82);

 cnt = 0;
 do {
  usleep_range(500, 2000);
  bbp_val = rt2800_bbp_read(rt2x00dev, 159);
  if (bbp_val == 0x02 || cnt == 20)
   break;

  cnt++;
 } while (cnt < 20);

 bbp_val = rt2800_bbp_dcoc_read(rt2x00dev, 0x39);
 cal_val = bbp_val & 0x7F;
 if (cal_val >= 0x40)
  cal_val -= 128;

 return cal_val;
}
