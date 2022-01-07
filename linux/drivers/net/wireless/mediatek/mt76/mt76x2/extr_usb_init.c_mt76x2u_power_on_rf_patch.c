
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int BIT (int) ;
 int CFG ;
 int MT_VEND_ADDR (int ,int) ;
 int mt76_clear (struct mt76x02_dev*,int ,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mt76x2u_power_on_rf_patch(struct mt76x02_dev *dev)
{
 mt76_set(dev, MT_VEND_ADDR(CFG, 0x130), BIT(0) | BIT(16));
 udelay(1);

 mt76_clear(dev, MT_VEND_ADDR(CFG, 0x1c), 0xff);
 mt76_set(dev, MT_VEND_ADDR(CFG, 0x1c), 0x30);

 mt76_wr(dev, MT_VEND_ADDR(CFG, 0x14), 0x484f);
 udelay(1);

 mt76_set(dev, MT_VEND_ADDR(CFG, 0x130), BIT(17));
 usleep_range(150, 200);

 mt76_clear(dev, MT_VEND_ADDR(CFG, 0x130), BIT(16));
 usleep_range(50, 100);

 mt76_set(dev, MT_VEND_ADDR(CFG, 0x14c), BIT(19) | BIT(20));
}
