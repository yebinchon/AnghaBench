
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {TYPE_8__* rx; TYPE_6__* bcn; TYPE_4__* atim; TYPE_2__* tx; } ;
struct queue_entry_priv_mmio {int desc_dma; } ;
struct TYPE_16__ {TYPE_7__* entries; int limit; int desc_size; } ;
struct TYPE_15__ {struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_14__ {TYPE_5__* entries; } ;
struct TYPE_13__ {struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_12__ {TYPE_3__* entries; int limit; } ;
struct TYPE_11__ {struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_10__ {TYPE_1__* entries; int limit; int desc_size; } ;
struct TYPE_9__ {struct queue_entry_priv_mmio* priv_data; } ;


 int RXCSR1 ;
 int RXCSR1_NUM_RXD ;
 int RXCSR1_RXD_SIZE ;
 int RXCSR2 ;
 int RXCSR2_RX_RING_REGISTER ;
 int TXCSR2 ;
 int TXCSR2_NUM_ATIM ;
 int TXCSR2_NUM_PRIO ;
 int TXCSR2_NUM_TXD ;
 int TXCSR2_TXD_SIZE ;
 int TXCSR3 ;
 int TXCSR3_TX_RING_REGISTER ;
 int TXCSR4 ;
 int TXCSR4_ATIM_RING_REGISTER ;
 int TXCSR5 ;
 int TXCSR5_PRIO_RING_REGISTER ;
 int TXCSR6 ;
 int TXCSR6_BEACON_RING_REGISTER ;
 int rt2x00_set_field32 (int *,int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static int rt2400pci_init_queues(struct rt2x00_dev *rt2x00dev)
{
 struct queue_entry_priv_mmio *entry_priv;
 u32 reg;




 reg = rt2x00mmio_register_read(rt2x00dev, TXCSR2);
 rt2x00_set_field32(&reg, TXCSR2_TXD_SIZE, rt2x00dev->tx[0].desc_size);
 rt2x00_set_field32(&reg, TXCSR2_NUM_TXD, rt2x00dev->tx[1].limit);
 rt2x00_set_field32(&reg, TXCSR2_NUM_ATIM, rt2x00dev->atim->limit);
 rt2x00_set_field32(&reg, TXCSR2_NUM_PRIO, rt2x00dev->tx[0].limit);
 rt2x00mmio_register_write(rt2x00dev, TXCSR2, reg);

 entry_priv = rt2x00dev->tx[1].entries[0].priv_data;
 reg = rt2x00mmio_register_read(rt2x00dev, TXCSR3);
 rt2x00_set_field32(&reg, TXCSR3_TX_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, TXCSR3, reg);

 entry_priv = rt2x00dev->tx[0].entries[0].priv_data;
 reg = rt2x00mmio_register_read(rt2x00dev, TXCSR5);
 rt2x00_set_field32(&reg, TXCSR5_PRIO_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, TXCSR5, reg);

 entry_priv = rt2x00dev->atim->entries[0].priv_data;
 reg = rt2x00mmio_register_read(rt2x00dev, TXCSR4);
 rt2x00_set_field32(&reg, TXCSR4_ATIM_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, TXCSR4, reg);

 entry_priv = rt2x00dev->bcn->entries[0].priv_data;
 reg = rt2x00mmio_register_read(rt2x00dev, TXCSR6);
 rt2x00_set_field32(&reg, TXCSR6_BEACON_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, TXCSR6, reg);

 reg = rt2x00mmio_register_read(rt2x00dev, RXCSR1);
 rt2x00_set_field32(&reg, RXCSR1_RXD_SIZE, rt2x00dev->rx->desc_size);
 rt2x00_set_field32(&reg, RXCSR1_NUM_RXD, rt2x00dev->rx->limit);
 rt2x00mmio_register_write(rt2x00dev, RXCSR1, reg);

 entry_priv = rt2x00dev->rx->entries[0].priv_data;
 reg = rt2x00mmio_register_read(rt2x00dev, RXCSR2);
 rt2x00_set_field32(&reg, RXCSR2_RX_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, RXCSR2, reg);

 return 0;
}
