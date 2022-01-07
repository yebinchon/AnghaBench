
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int mt76; } ;


 int mt76_chip (int *) ;
 int mt76_is_mmio (struct mt76x02_dev*) ;

__attribute__((used)) static inline bool is_mt7610e(struct mt76x02_dev *dev)
{
 if (!mt76_is_mmio(dev))
  return 0;

 return mt76_chip(&dev->mt76) == 0x7610;
}
