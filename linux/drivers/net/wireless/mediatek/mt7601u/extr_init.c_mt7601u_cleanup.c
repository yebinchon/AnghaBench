
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int state; } ;


 int MT7601U_STATE_INITIALIZED ;
 int mt7601u_dma_cleanup (struct mt7601u_dev*) ;
 int mt7601u_mcu_cmd_deinit (struct mt7601u_dev*) ;
 int mt7601u_stop_hardware (struct mt7601u_dev*) ;
 int test_and_clear_bit (int ,int *) ;

void mt7601u_cleanup(struct mt7601u_dev *dev)
{
 if (!test_and_clear_bit(MT7601U_STATE_INITIALIZED, &dev->state))
  return;

 mt7601u_stop_hardware(dev);
 mt7601u_dma_cleanup(dev);
 mt7601u_mcu_cmd_deinit(dev);
}
