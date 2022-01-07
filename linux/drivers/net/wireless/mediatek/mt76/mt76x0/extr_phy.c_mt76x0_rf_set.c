
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int mt76x0_rf_rmw (struct mt76x02_dev*,int ,int ,int ) ;

__attribute__((used)) static int
mt76x0_rf_set(struct mt76x02_dev *dev, u32 offset, u8 val)
{
 return mt76x0_rf_rmw(dev, offset, 0, val);
}
