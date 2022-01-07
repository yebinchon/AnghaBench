
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {unsigned char* data; scalar_t__ cb; } ;
struct r8192_priv {TYPE_1__* ieee80211; TYPE_2__* pFirmware; } ;
struct net_device {int dummy; } ;
struct cb_desc {size_t queue_index; size_t bLastIniPkt; scalar_t__ txbuf_size; int bCmdOrInit; } ;
struct TYPE_4__ {scalar_t__ cmdpacket_frag_threshold; } ;
typedef TYPE_2__ rt_firmware ;
typedef int dev ;
struct TYPE_3__ {int (* softmac_hard_start_xmit ) (struct sk_buff*,struct net_device*) ;int * skb_waitQ; scalar_t__ queue_stop; int (* check_nic_enough_desc ) (struct net_device*,size_t) ;} ;


 int COMP_FIRMWARE ;
 int DESC_PACKET_TYPE_INIT ;
 scalar_t__ MAX_DEV_ADDR_SIZE ;
 int RT_TRACE (int ,char*) ;
 size_t TXCMD_QUEUE ;
 scalar_t__ USB_HWDESC_HEADER_LEN ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int firmware_init_param (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (unsigned char*,struct net_device**,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int stub1 (struct net_device*,size_t) ;
 int stub2 (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
        u32 buffer_len)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 bool rt_status = 1;
 u16 frag_threshold;
 u16 frag_length, frag_offset = 0;
 int i;

 rt_firmware *pfirmware = priv->pFirmware;
 struct sk_buff *skb;
 unsigned char *seg_ptr;
 struct cb_desc *tcb_desc;
 u8 bLastIniPkt;
 u8 index;

 firmware_init_param(dev);

 frag_threshold = pfirmware->cmdpacket_frag_threshold;
 do {
  if ((buffer_len - frag_offset) > frag_threshold) {
   frag_length = frag_threshold;
   bLastIniPkt = 0;

  } else {
   frag_length = buffer_len - frag_offset;
   bLastIniPkt = 1;

  }




  skb = dev_alloc_skb(USB_HWDESC_HEADER_LEN + frag_length + 4);
  if (!skb)
   return 0;
  memcpy((unsigned char *)(skb->cb), &dev, sizeof(dev));
  tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
  tcb_desc->queue_index = TXCMD_QUEUE;
  tcb_desc->bCmdOrInit = DESC_PACKET_TYPE_INIT;
  tcb_desc->bLastIniPkt = bLastIniPkt;

  skb_reserve(skb, USB_HWDESC_HEADER_LEN);
  seg_ptr = skb->data;




  for (i = 0; i < frag_length; i += 4) {
   *seg_ptr++ = ((i+0) < frag_length)?code_virtual_address[i+3] : 0;
   *seg_ptr++ = ((i+1) < frag_length)?code_virtual_address[i+2] : 0;
   *seg_ptr++ = ((i+2) < frag_length)?code_virtual_address[i+1] : 0;
   *seg_ptr++ = ((i+3) < frag_length)?code_virtual_address[i+0] : 0;
  }
  tcb_desc->txbuf_size = (u16)i;
  skb_put(skb, i);

  index = tcb_desc->queue_index;
  if (!priv->ieee80211->check_nic_enough_desc(dev, index) ||
         (!skb_queue_empty(&priv->ieee80211->skb_waitQ[index])) ||
         (priv->ieee80211->queue_stop)) {
   RT_TRACE(COMP_FIRMWARE, "=====================================================> tx full!\n");
   skb_queue_tail(&priv->ieee80211->skb_waitQ[tcb_desc->queue_index], skb);
  } else {
   priv->ieee80211->softmac_hard_start_xmit(skb, dev);
  }

  code_virtual_address += frag_length;
  frag_offset += frag_length;

 } while (frag_offset < buffer_len);

 return rt_status;

}
