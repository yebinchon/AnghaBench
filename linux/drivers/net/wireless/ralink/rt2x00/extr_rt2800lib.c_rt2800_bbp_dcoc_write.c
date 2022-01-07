
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int rt2800_bbp_write (struct rt2x00_dev*,int,int const) ;

__attribute__((used)) static void rt2800_bbp_dcoc_write(struct rt2x00_dev *rt2x00dev,
      const u8 reg, const u8 value)
{
 rt2800_bbp_write(rt2x00dev, 158, reg);
 rt2800_bbp_write(rt2x00dev, 159, value);
}
