
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rxdone_entry_desc {int timestamp; int signal; int size; int dev_flags; scalar_t__ rssi; int flags; } ;
struct rt2x00_dev {scalar_t__ rssi_offset; int hw; TYPE_2__* ops; } ;
struct queue_entry_priv_mmio {int desc; } ;
struct queue_entry {TYPE_3__* queue; struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_6__ {struct rt2x00_dev* rt2x00dev; } ;
struct TYPE_5__ {TYPE_1__* hw; } ;
struct TYPE_4__ {int (* get_tsf ) (int ,int *) ;} ;


 int RXDONE_MY_BSS ;
 int RXDONE_SIGNAL_PLCP ;
 int RXD_W0_CRC_ERROR ;
 int RXD_W0_DATABYTE_COUNT ;
 int RXD_W0_MY_BSS ;
 int RXD_W0_PHYSICAL_ERROR ;
 int RXD_W2_SIGNAL ;
 int RXD_W3_RSSI ;
 int RXD_W4_RX_END_TIME ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_FAILED_PLCP_CRC ;
 int rt2x00_desc_read (int ,int) ;
 int rt2x00_get_field32 (int,int ) ;
 int stub1 (int ,int *) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void rt2400pci_fill_rxdone(struct queue_entry *entry,
      struct rxdone_entry_desc *rxdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
 u32 word0;
 u32 word2;
 u32 word3;
 u32 word4;
 u64 tsf;
 u32 rx_low;
 u32 rx_high;

 word0 = rt2x00_desc_read(entry_priv->desc, 0);
 word2 = rt2x00_desc_read(entry_priv->desc, 2);
 word3 = rt2x00_desc_read(entry_priv->desc, 3);
 word4 = rt2x00_desc_read(entry_priv->desc, 4);

 if (rt2x00_get_field32(word0, RXD_W0_CRC_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_FCS_CRC;
 if (rt2x00_get_field32(word0, RXD_W0_PHYSICAL_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_PLCP_CRC;
 tsf = rt2x00dev->ops->hw->get_tsf(rt2x00dev->hw, ((void*)0));
 rx_low = rt2x00_get_field32(word4, RXD_W4_RX_END_TIME);
 rx_high = upper_32_bits(tsf);

 if ((u32)tsf <= rx_low)
  rx_high--;






 rxdesc->timestamp = ((u64)rx_high << 32) | rx_low;
 rxdesc->signal = rt2x00_get_field32(word2, RXD_W2_SIGNAL) & ~0x08;
 rxdesc->rssi = rt2x00_get_field32(word3, RXD_W3_RSSI) -
     entry->queue->rt2x00dev->rssi_offset;
 rxdesc->size = rt2x00_get_field32(word0, RXD_W0_DATABYTE_COUNT);

 rxdesc->dev_flags |= RXDONE_SIGNAL_PLCP;
 if (rt2x00_get_field32(word0, RXD_W0_MY_BSS))
  rxdesc->dev_flags |= RXDONE_MY_BSS;
}
