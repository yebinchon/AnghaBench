
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct urb {int dummy; } ;
struct tx_desc_cmd_819x_usb {int FirstSeg; int LastSeg; int OWN; int LINIP; int TxBufferSize; int CmdInit; } ;
struct sk_buff {int len; scalar_t__ data; scalar_t__ cb; } ;
struct r8192_priv {int udev; int * tx_pending; } ;
struct net_device {int dummy; } ;
struct cb_desc {size_t queue_index; int bLastIniPkt; int txbuf_size; int bCmdOrInit; } ;


 int DMESGE (char*,int) ;
 short ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_DEV_ADDR_SIZE ;
 int USB_HWDESC_HEADER_LEN ;
 int atomic_inc (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memset (struct tx_desc_cmd_819x_usb*,int ,int ) ;
 int rtl8192_tx_isr ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,scalar_t__,int ,int ,struct sk_buff*) ;
 int usb_sndbulkpipe (int ,unsigned int) ;
 int usb_submit_urb (struct urb*,int ) ;

short rtl819xU_tx_cmd(struct net_device *dev, struct sk_buff *skb)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int status;
 struct urb *tx_urb;
 unsigned int idx_pipe;
 struct tx_desc_cmd_819x_usb *pdesc = (struct tx_desc_cmd_819x_usb *)skb->data;
 struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 u8 queue_index = tcb_desc->queue_index;

 atomic_inc(&priv->tx_pending[queue_index]);
 tx_urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!tx_urb) {
  dev_kfree_skb(skb);
  return -ENOMEM;
 }

 memset(pdesc, 0, USB_HWDESC_HEADER_LEN);

 pdesc->FirstSeg = 1;
 pdesc->LastSeg = 1;
 pdesc->CmdInit = tcb_desc->bCmdOrInit;
 pdesc->TxBufferSize = tcb_desc->txbuf_size;
 pdesc->OWN = 1;
 pdesc->LINIP = tcb_desc->bLastIniPkt;





 idx_pipe = 0x04;
 usb_fill_bulk_urb(tx_urb, priv->udev,
     usb_sndbulkpipe(priv->udev, idx_pipe),
     skb->data, skb->len, rtl8192_tx_isr, skb);

 status = usb_submit_urb(tx_urb, GFP_ATOMIC);

 if (!status)
  return 0;

 DMESGE("Error TX CMD URB, error %d", status);
 return -1;
}
