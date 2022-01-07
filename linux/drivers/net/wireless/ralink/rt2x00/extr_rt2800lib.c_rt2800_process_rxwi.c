
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rxdone_entry_desc {int signal; scalar_t__ rate_mode; int rssi; int dev_flags; int bw; int enc_flags; void* size; void* cipher; } ;
struct queue_entry {TYPE_1__* queue; TYPE_2__* skb; } ;
typedef int __le32 ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int winfo_size; int rt2x00dev; } ;


 int RATE_INFO_BW_40 ;
 scalar_t__ RATE_MODE_CCK ;
 int RXDONE_SIGNAL_MCS ;
 int RXWI_W0_MPDU_TOTAL_BYTE_COUNT ;
 int RXWI_W0_UDF ;
 int RXWI_W1_BW ;
 int RXWI_W1_MCS ;
 int RXWI_W1_PHYMODE ;
 int RXWI_W1_SHORT_GI ;
 int RX_ENC_FLAG_SHORT_GI ;
 int rt2800_agc_to_rssi (int ,int ) ;
 int rt2x00_desc_read (int *,int) ;
 void* rt2x00_get_field32 (int ,int ) ;
 int skb_pull (TYPE_2__*,int ) ;

void rt2800_process_rxwi(struct queue_entry *entry,
    struct rxdone_entry_desc *rxdesc)
{
 __le32 *rxwi = (__le32 *) entry->skb->data;
 u32 word;

 word = rt2x00_desc_read(rxwi, 0);

 rxdesc->cipher = rt2x00_get_field32(word, RXWI_W0_UDF);
 rxdesc->size = rt2x00_get_field32(word, RXWI_W0_MPDU_TOTAL_BYTE_COUNT);

 word = rt2x00_desc_read(rxwi, 1);

 if (rt2x00_get_field32(word, RXWI_W1_SHORT_GI))
  rxdesc->enc_flags |= RX_ENC_FLAG_SHORT_GI;

 if (rt2x00_get_field32(word, RXWI_W1_BW))
  rxdesc->bw = RATE_INFO_BW_40;




 rxdesc->dev_flags |= RXDONE_SIGNAL_MCS;
 rxdesc->signal = rt2x00_get_field32(word, RXWI_W1_MCS);
 rxdesc->rate_mode = rt2x00_get_field32(word, RXWI_W1_PHYMODE);




 if (rxdesc->rate_mode == RATE_MODE_CCK)
  rxdesc->signal &= ~0x8;

 word = rt2x00_desc_read(rxwi, 2);




 rxdesc->rssi = rt2800_agc_to_rssi(entry->queue->rt2x00dev, word);



 skb_pull(entry->skb, entry->queue->winfo_size);
}
