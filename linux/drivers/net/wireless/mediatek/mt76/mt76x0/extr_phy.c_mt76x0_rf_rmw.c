
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int mt76x0_rf_rr (struct mt76x02_dev*,int ) ;
 int mt76x0_rf_wr (struct mt76x02_dev*,int ,int) ;

__attribute__((used)) static int
mt76x0_rf_rmw(struct mt76x02_dev *dev, u32 offset, u8 mask, u8 val)
{
 int ret;

 ret = mt76x0_rf_rr(dev, offset);
 if (ret < 0)
  return ret;

 val |= ret & ~mask;

 ret = mt76x0_rf_wr(dev, offset, val);
 return ret ? ret : val;
}
