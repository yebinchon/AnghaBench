
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dummy; } ;


 int mt7601u_bbp_rr (struct mt7601u_dev*,int) ;
 int mt7601u_bbp_wr (struct mt7601u_dev*,int,int) ;

__attribute__((used)) static u8 mt7601u_bbp_rmc(struct mt7601u_dev *dev, u8 offset, u8 mask, u8 val)
{
 int ret;

 ret = mt7601u_bbp_rr(dev, offset);
 if (ret < 0)
  return ret;
 val |= ret & ~mask;
 if (ret != val)
  mt7601u_bbp_wr(dev, offset, val);

 return val;
}
