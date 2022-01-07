
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct mt7601u_dev {int state; TYPE_1__ mcu; } ;


 int MT7601U_STATE_MCU_RUNNING ;
 int mt7601u_load_firmware (struct mt7601u_dev*) ;
 int mutex_init (int *) ;
 int set_bit (int ,int *) ;

int mt7601u_mcu_init(struct mt7601u_dev *dev)
{
 int ret;

 mutex_init(&dev->mcu.mutex);

 ret = mt7601u_load_firmware(dev);
 if (ret)
  return ret;

 set_bit(MT7601U_STATE_MCU_RUNNING, &dev->state);

 return 0;
}
