
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct skb_frame_desc {scalar_t__ desc; int desc_len; } ;
struct rxdone_entry_desc {scalar_t__ cipher; scalar_t__ cipher_status; void* size; int dev_flags; void* rssi; void* signal; int flags; void** iv; } ;
struct rt2x00_dev {void* rssi_offset; } ;
struct queue_entry_priv_usb {TYPE_1__* urb; } ;
struct queue_entry {TYPE_3__* skb; TYPE_2__* queue; struct queue_entry_priv_usb* priv_data; } ;
typedef int __le32 ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ desc_size; struct rt2x00_dev* rt2x00dev; } ;
struct TYPE_5__ {scalar_t__ actual_length; } ;


 scalar_t__ CIPHER_NONE ;
 int RXDONE_CRYPTO_IV ;
 int RXDONE_MY_BSS ;
 int RXDONE_SIGNAL_BITRATE ;
 int RXDONE_SIGNAL_PLCP ;
 int RXD_W0_CIPHER ;
 int RXD_W0_CIPHER_ERROR ;
 int RXD_W0_CRC_ERROR ;
 int RXD_W0_DATABYTE_COUNT ;
 int RXD_W0_MY_BSS ;
 int RXD_W0_OFDM ;
 int RXD_W0_PHYSICAL_ERROR ;
 int RXD_W1_RSSI ;
 int RXD_W1_SIGNAL ;
 scalar_t__ RX_CRYPTO_FAIL_KEY ;
 scalar_t__ RX_CRYPTO_FAIL_MIC ;
 scalar_t__ RX_CRYPTO_SUCCESS ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_FAILED_PLCP_CRC ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 void* _rt2x00_desc_read (int *,int) ;
 struct skb_frame_desc* get_skb_frame_desc (TYPE_3__*) ;
 int memcpy (scalar_t__,int *,int ) ;
 int rt2x00_desc_read (int *,int) ;
 void* rt2x00_get_field32 (int ,int ) ;
 int skb_trim (TYPE_3__*,void*) ;

__attribute__((used)) static void rt2500usb_fill_rxdone(struct queue_entry *entry,
      struct rxdone_entry_desc *rxdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct queue_entry_priv_usb *entry_priv = entry->priv_data;
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 __le32 *rxd =
     (__le32 *)(entry->skb->data +
         (entry_priv->urb->actual_length -
   entry->queue->desc_size));
 u32 word0;
 u32 word1;





 memcpy(skbdesc->desc, rxd, skbdesc->desc_len);
 rxd = (__le32 *)skbdesc->desc;




 word0 = rt2x00_desc_read(rxd, 0);
 word1 = rt2x00_desc_read(rxd, 1);

 if (rt2x00_get_field32(word0, RXD_W0_CRC_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_FCS_CRC;
 if (rt2x00_get_field32(word0, RXD_W0_PHYSICAL_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_PLCP_CRC;

 rxdesc->cipher = rt2x00_get_field32(word0, RXD_W0_CIPHER);
 if (rt2x00_get_field32(word0, RXD_W0_CIPHER_ERROR))
  rxdesc->cipher_status = RX_CRYPTO_FAIL_KEY;

 if (rxdesc->cipher != CIPHER_NONE) {
  rxdesc->iv[0] = _rt2x00_desc_read(rxd, 2);
  rxdesc->iv[1] = _rt2x00_desc_read(rxd, 3);
  rxdesc->dev_flags |= RXDONE_CRYPTO_IV;



  rxdesc->flags |= RX_FLAG_MMIC_STRIPPED;
  if (rxdesc->cipher_status == RX_CRYPTO_SUCCESS)
   rxdesc->flags |= RX_FLAG_DECRYPTED;
  else if (rxdesc->cipher_status == RX_CRYPTO_FAIL_MIC)
   rxdesc->flags |= RX_FLAG_MMIC_ERROR;
 }







 rxdesc->signal = rt2x00_get_field32(word1, RXD_W1_SIGNAL);
 rxdesc->rssi =
     rt2x00_get_field32(word1, RXD_W1_RSSI) - rt2x00dev->rssi_offset;
 rxdesc->size = rt2x00_get_field32(word0, RXD_W0_DATABYTE_COUNT);

 if (rt2x00_get_field32(word0, RXD_W0_OFDM))
  rxdesc->dev_flags |= RXDONE_SIGNAL_PLCP;
 else
  rxdesc->dev_flags |= RXDONE_SIGNAL_BITRATE;
 if (rt2x00_get_field32(word0, RXD_W0_MY_BSS))
  rxdesc->dev_flags |= RXDONE_MY_BSS;




 skb_trim(entry->skb, rxdesc->size);
}
