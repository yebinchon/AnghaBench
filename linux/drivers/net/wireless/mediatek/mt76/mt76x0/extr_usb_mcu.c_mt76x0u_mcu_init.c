
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT76_STATE_MCU_RUNNING ;
 int mt76x0u_load_firmware (struct mt76x02_dev*) ;
 int set_bit (int ,int *) ;

int mt76x0u_mcu_init(struct mt76x02_dev *dev)
{
 int ret;

 ret = mt76x0u_load_firmware(dev);
 if (ret < 0)
  return ret;

 set_bit(MT76_STATE_MCU_RUNNING, &dev->mt76.state);

 return 0;
}
