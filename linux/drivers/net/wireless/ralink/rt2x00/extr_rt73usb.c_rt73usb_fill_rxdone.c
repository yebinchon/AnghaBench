
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct skb_frame_desc {scalar_t__ desc; int desc_len; } ;
struct rxdone_entry_desc {scalar_t__ cipher; scalar_t__ cipher_status; void* size; int dev_flags; int rssi; void* signal; int flags; void* icv; void** iv; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {TYPE_2__* skb; TYPE_1__* queue; } ;
typedef int __le32 ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int desc_size; struct rt2x00_dev* rt2x00dev; } ;


 scalar_t__ CIPHER_NONE ;
 int RXDONE_CRYPTO_ICV ;
 int RXDONE_CRYPTO_IV ;
 int RXDONE_MY_BSS ;
 int RXDONE_SIGNAL_BITRATE ;
 int RXDONE_SIGNAL_PLCP ;
 int RXD_W0_CIPHER_ALG ;
 int RXD_W0_CIPHER_ERROR ;
 int RXD_W0_CRC_ERROR ;
 int RXD_W0_DATABYTE_COUNT ;
 int RXD_W0_MY_BSS ;
 int RXD_W0_OFDM ;
 int RXD_W1_SIGNAL ;
 scalar_t__ RX_CRYPTO_FAIL_MIC ;
 scalar_t__ RX_CRYPTO_SUCCESS ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 void* _rt2x00_desc_read (int *,int) ;
 struct skb_frame_desc* get_skb_frame_desc (TYPE_2__*) ;
 int memcpy (scalar_t__,int *,int ) ;
 int rt2x00_desc_read (int *,int) ;
 void* rt2x00_get_field32 (int ,int ) ;
 int rt73usb_agc_to_rssi (struct rt2x00_dev*,int ) ;
 int skb_pull (TYPE_2__*,int ) ;
 int skb_trim (TYPE_2__*,void*) ;

__attribute__((used)) static void rt73usb_fill_rxdone(struct queue_entry *entry,
    struct rxdone_entry_desc *rxdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 __le32 *rxd = (__le32 *)entry->skb->data;
 u32 word0;
 u32 word1;





 memcpy(skbdesc->desc, rxd, skbdesc->desc_len);
 rxd = (__le32 *)skbdesc->desc;




 word0 = rt2x00_desc_read(rxd, 0);
 word1 = rt2x00_desc_read(rxd, 1);

 if (rt2x00_get_field32(word0, RXD_W0_CRC_ERROR))
  rxdesc->flags |= RX_FLAG_FAILED_FCS_CRC;

 rxdesc->cipher = rt2x00_get_field32(word0, RXD_W0_CIPHER_ALG);
 rxdesc->cipher_status = rt2x00_get_field32(word0, RXD_W0_CIPHER_ERROR);

 if (rxdesc->cipher != CIPHER_NONE) {
  rxdesc->iv[0] = _rt2x00_desc_read(rxd, 2);
  rxdesc->iv[1] = _rt2x00_desc_read(rxd, 3);
  rxdesc->dev_flags |= RXDONE_CRYPTO_IV;

  rxdesc->icv = _rt2x00_desc_read(rxd, 4);
  rxdesc->dev_flags |= RXDONE_CRYPTO_ICV;






  rxdesc->flags |= RX_FLAG_IV_STRIPPED;





  rxdesc->flags |= RX_FLAG_MMIC_STRIPPED;

  if (rxdesc->cipher_status == RX_CRYPTO_SUCCESS)
   rxdesc->flags |= RX_FLAG_DECRYPTED;
  else if (rxdesc->cipher_status == RX_CRYPTO_FAIL_MIC)
   rxdesc->flags |= RX_FLAG_MMIC_ERROR;
 }







 rxdesc->signal = rt2x00_get_field32(word1, RXD_W1_SIGNAL);
 rxdesc->rssi = rt73usb_agc_to_rssi(rt2x00dev, word1);
 rxdesc->size = rt2x00_get_field32(word0, RXD_W0_DATABYTE_COUNT);

 if (rt2x00_get_field32(word0, RXD_W0_OFDM))
  rxdesc->dev_flags |= RXDONE_SIGNAL_PLCP;
 else
  rxdesc->dev_flags |= RXDONE_SIGNAL_BITRATE;
 if (rt2x00_get_field32(word0, RXD_W0_MY_BSS))
  rxdesc->dev_flags |= RXDONE_MY_BSS;




 skb_pull(entry->skb, entry->queue->desc_size);
 skb_trim(entry->skb, rxdesc->size);
}
