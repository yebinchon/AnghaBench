
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int tx_tasklet; int rx_tasklet; } ;


 int mt7601u_free_rx (struct mt7601u_dev*) ;
 int mt7601u_free_tx (struct mt7601u_dev*) ;
 int mt7601u_kill_rx (struct mt7601u_dev*) ;
 int tasklet_kill (int *) ;

void mt7601u_dma_cleanup(struct mt7601u_dev *dev)
{
 mt7601u_kill_rx(dev);

 tasklet_kill(&dev->rx_tasklet);

 mt7601u_free_rx(dev);
 mt7601u_free_tx(dev);

 tasklet_kill(&dev->tx_tasklet);
}
