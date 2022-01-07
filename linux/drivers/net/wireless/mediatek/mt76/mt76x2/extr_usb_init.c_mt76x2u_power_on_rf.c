
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int BIT (int) ;
 int CFG ;
 int MT_VEND_ADDR (int ,int) ;
 int mt76_clear (struct mt76x02_dev*,int,int) ;
 int mt76_set (struct mt76x02_dev*,int,int) ;
 int mt76x2u_power_on_rf_patch (struct mt76x02_dev*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mt76x2u_power_on_rf(struct mt76x02_dev *dev, int unit)
{
 int shift = unit ? 8 : 0;
 u32 val = (BIT(1) | BIT(3) | BIT(4) | BIT(5)) << shift;


 mt76_set(dev, MT_VEND_ADDR(CFG, 0x130), BIT(0) << shift);
 usleep_range(10, 20);


 mt76_set(dev, MT_VEND_ADDR(CFG, 0x130), val);
 usleep_range(10, 20);


 mt76_clear(dev, MT_VEND_ADDR(CFG, 0x130), BIT(2) << shift);
 usleep_range(10, 20);

 mt76x2u_power_on_rf_patch(dev);

 mt76_set(dev, 0x530, 0xf);
}
