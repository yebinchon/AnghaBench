
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int rx_tasklet; int tx_tasklet; } ;


 int ENOMEM ;
 int mt7601u_alloc_rx (struct mt7601u_dev*) ;
 int mt7601u_alloc_tx (struct mt7601u_dev*) ;
 int mt7601u_dma_cleanup (struct mt7601u_dev*) ;
 int mt7601u_rx_tasklet ;
 int mt7601u_submit_rx (struct mt7601u_dev*) ;
 int mt7601u_tx_tasklet ;
 int tasklet_init (int *,int ,unsigned long) ;

int mt7601u_dma_init(struct mt7601u_dev *dev)
{
 int ret = -ENOMEM;

 tasklet_init(&dev->tx_tasklet, mt7601u_tx_tasklet, (unsigned long) dev);
 tasklet_init(&dev->rx_tasklet, mt7601u_rx_tasklet, (unsigned long) dev);

 ret = mt7601u_alloc_tx(dev);
 if (ret)
  goto err;
 ret = mt7601u_alloc_rx(dev);
 if (ret)
  goto err;

 ret = mt7601u_submit_rx(dev);
 if (ret)
  goto err;

 return 0;
err:
 mt7601u_dma_cleanup(dev);
 return ret;
}
