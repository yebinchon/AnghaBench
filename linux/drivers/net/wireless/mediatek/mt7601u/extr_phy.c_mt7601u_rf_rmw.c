
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dummy; } ;


 int mt7601u_rf_rr (struct mt7601u_dev*,int,int) ;
 int mt7601u_rf_wr (struct mt7601u_dev*,int,int,int) ;

__attribute__((used)) static int
mt7601u_rf_rmw(struct mt7601u_dev *dev, u8 bank, u8 offset, u8 mask, u8 val)
{
 int ret;

 ret = mt7601u_rf_rr(dev, bank, offset);
 if (ret < 0)
  return ret;
 val |= ret & ~mask;
 ret = mt7601u_rf_wr(dev, bank, offset, val);
 if (ret)
  return ret;

 return val;
}
