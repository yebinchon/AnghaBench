
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pre_tbtt_tasklet; } ;
struct TYPE_3__ {int dfs_tasklet; } ;
struct mt76x02_dev {TYPE_2__ mt76; TYPE_1__ dfs_pd; } ;


 int mt76x02_dma_cleanup (struct mt76x02_dev*) ;
 int mt76x02_mcu_cleanup (struct mt76x02_dev*) ;
 int mt76x2_stop_hardware (struct mt76x02_dev*) ;
 int tasklet_disable (int *) ;

void mt76x2_cleanup(struct mt76x02_dev *dev)
{
 tasklet_disable(&dev->dfs_pd.dfs_tasklet);
 tasklet_disable(&dev->mt76.pre_tbtt_tasklet);
 mt76x2_stop_hardware(dev);
 mt76x02_dma_cleanup(dev);
 mt76x02_mcu_cleanup(dev);
}
