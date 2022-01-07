
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rt2x00_dev {TYPE_4__* rx; TYPE_2__* tx; } ;
struct queue_entry_priv_mmio {scalar_t__ desc_dma; } ;
struct TYPE_8__ {scalar_t__ limit; TYPE_3__* entries; } ;
struct TYPE_7__ {struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_6__ {scalar_t__ limit; TYPE_1__* entries; } ;
struct TYPE_5__ {struct queue_entry_priv_mmio* priv_data; } ;


 int DELAY_INT_CFG ;
 int RX_BASE_PTR ;
 int RX_CRX_IDX ;
 int RX_DRX_IDX ;
 int RX_MAX_CNT ;
 int TX_BASE_PTR0 ;
 int TX_BASE_PTR1 ;
 int TX_BASE_PTR2 ;
 int TX_BASE_PTR3 ;
 int TX_BASE_PTR4 ;
 int TX_BASE_PTR5 ;
 int TX_CTX_IDX0 ;
 int TX_CTX_IDX1 ;
 int TX_CTX_IDX2 ;
 int TX_CTX_IDX3 ;
 int TX_CTX_IDX4 ;
 int TX_CTX_IDX5 ;
 int TX_DTX_IDX0 ;
 int TX_DTX_IDX1 ;
 int TX_DTX_IDX2 ;
 int TX_DTX_IDX3 ;
 int TX_DTX_IDX4 ;
 int TX_DTX_IDX5 ;
 int TX_MAX_CNT0 ;
 int TX_MAX_CNT1 ;
 int TX_MAX_CNT2 ;
 int TX_MAX_CNT3 ;
 int TX_MAX_CNT4 ;
 int TX_MAX_CNT5 ;
 int rt2800_disable_wpdma (struct rt2x00_dev*) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,scalar_t__) ;

int rt2800mmio_init_queues(struct rt2x00_dev *rt2x00dev)
{
 struct queue_entry_priv_mmio *entry_priv;




 entry_priv = rt2x00dev->tx[0].entries[0].priv_data;
 rt2x00mmio_register_write(rt2x00dev, TX_BASE_PTR0,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, TX_MAX_CNT0,
      rt2x00dev->tx[0].limit);
 rt2x00mmio_register_write(rt2x00dev, TX_CTX_IDX0, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_DTX_IDX0, 0);

 entry_priv = rt2x00dev->tx[1].entries[0].priv_data;
 rt2x00mmio_register_write(rt2x00dev, TX_BASE_PTR1,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, TX_MAX_CNT1,
      rt2x00dev->tx[1].limit);
 rt2x00mmio_register_write(rt2x00dev, TX_CTX_IDX1, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_DTX_IDX1, 0);

 entry_priv = rt2x00dev->tx[2].entries[0].priv_data;
 rt2x00mmio_register_write(rt2x00dev, TX_BASE_PTR2,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, TX_MAX_CNT2,
      rt2x00dev->tx[2].limit);
 rt2x00mmio_register_write(rt2x00dev, TX_CTX_IDX2, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_DTX_IDX2, 0);

 entry_priv = rt2x00dev->tx[3].entries[0].priv_data;
 rt2x00mmio_register_write(rt2x00dev, TX_BASE_PTR3,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, TX_MAX_CNT3,
      rt2x00dev->tx[3].limit);
 rt2x00mmio_register_write(rt2x00dev, TX_CTX_IDX3, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_DTX_IDX3, 0);

 rt2x00mmio_register_write(rt2x00dev, TX_BASE_PTR4, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_MAX_CNT4, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_CTX_IDX4, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_DTX_IDX4, 0);

 rt2x00mmio_register_write(rt2x00dev, TX_BASE_PTR5, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_MAX_CNT5, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_CTX_IDX5, 0);
 rt2x00mmio_register_write(rt2x00dev, TX_DTX_IDX5, 0);

 entry_priv = rt2x00dev->rx->entries[0].priv_data;
 rt2x00mmio_register_write(rt2x00dev, RX_BASE_PTR,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, RX_MAX_CNT,
      rt2x00dev->rx[0].limit);
 rt2x00mmio_register_write(rt2x00dev, RX_CRX_IDX,
      rt2x00dev->rx[0].limit - 1);
 rt2x00mmio_register_write(rt2x00dev, RX_DRX_IDX, 0);

 rt2800_disable_wpdma(rt2x00dev);

 rt2x00mmio_register_write(rt2x00dev, DELAY_INT_CFG, 0);

 return 0;
}
