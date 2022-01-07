
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pre_tbtt_tasklet; int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT76_STATE_INITIALIZED ;
 int clear_bit (int ,int *) ;
 int mt76x02_dma_cleanup (struct mt76x02_dev*) ;
 int mt76x02_mcu_cleanup (struct mt76x02_dev*) ;
 int mt76x0_chip_onoff (struct mt76x02_dev*,int,int) ;
 int mt76x0e_stop_hw (struct mt76x02_dev*) ;
 int tasklet_disable (int *) ;

__attribute__((used)) static void mt76x0e_cleanup(struct mt76x02_dev *dev)
{
 clear_bit(MT76_STATE_INITIALIZED, &dev->mt76.state);
 tasklet_disable(&dev->mt76.pre_tbtt_tasklet);
 mt76x0_chip_onoff(dev, 0, 0);
 mt76x0e_stop_hw(dev);
 mt76x02_dma_cleanup(dev);
 mt76x02_mcu_cleanup(dev);
}
