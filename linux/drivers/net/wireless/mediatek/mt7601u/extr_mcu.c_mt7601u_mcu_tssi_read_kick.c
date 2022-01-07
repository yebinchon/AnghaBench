
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int tssi_read_trig; int dev; int state; } ;


 int ATOMIC_TSSI_SETTING ;
 int MT7601U_STATE_MCU_RUNNING ;
 int dev_warn (int ,char*) ;
 int mt7601u_mcu_function_select (struct mt7601u_dev*,int ,int) ;
 int test_bit (int ,int *) ;

int mt7601u_mcu_tssi_read_kick(struct mt7601u_dev *dev, int use_hvga)
{
 int ret;

 if (!test_bit(MT7601U_STATE_MCU_RUNNING, &dev->state))
  return 0;

 ret = mt7601u_mcu_function_select(dev, ATOMIC_TSSI_SETTING,
       use_hvga);
 if (ret) {
  dev_warn(dev->dev, "Warning: MCU TSSI read kick failed\n");
  return ret;
 }

 dev->tssi_read_trig = 1;

 return 0;
}
