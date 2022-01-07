
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_MCU_COM_REG0 ;
 int mt76_rr (struct mt76x02_dev*,int ) ;

__attribute__((used)) static inline int mt76x0_firmware_running(struct mt76x02_dev *dev)
{
 return mt76_rr(dev, MT_MCU_COM_REG0) == 1;
}
