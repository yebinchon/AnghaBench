
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int BIT (int) ;
 int mt76_clear (struct mt76x02_dev*,int,int) ;
 int mt76_set (struct mt76x02_dev*,int,int) ;
 int mt76x2_power_on_rf_patch (struct mt76x02_dev*) ;
 int udelay (int) ;

__attribute__((used)) static void
mt76x2_power_on_rf(struct mt76x02_dev *dev, int unit)
{
 int shift = unit ? 8 : 0;


 mt76_set(dev, 0x10130, BIT(0) << shift);
 udelay(10);


 mt76_set(dev, 0x10130, (BIT(1) | BIT(3) | BIT(4) | BIT(5)) << shift);
 udelay(10);


 mt76_clear(dev, 0x10130, BIT(2) << shift);
 udelay(10);

 mt76x2_power_on_rf_patch(dev);

 mt76_set(dev, 0x530, 0xf);
}
