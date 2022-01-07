
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ cb; struct net_device* dev; scalar_t__ len; scalar_t__ data; } ;
struct rx_desc {int OWN; int EOR; int Length; int BufferAddress; } ;
struct rtllib_rx_stats {scalar_t__ bCRC; scalar_t__ RxBufShift; scalar_t__ RxDrvInfoSize; int nic_type; int freq; int rate; int noise; int signal; } ;
struct rtllib_hdr_1addr {int frame_ctl; int addr1; } ;
struct TYPE_5__ {int rxbytesunicast; int rxok; int rxmgmtcrcerr; int rxdatacrcerr; } ;
struct r8192_priv {unsigned int rxringcount; size_t* rx_idx; int rxbuffersize; int pdev; struct sk_buff*** rx_buf; TYPE_2__ stats; TYPE_3__* rtllib; TYPE_1__* ops; struct rx_desc** rx_ring; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int (* LedControlHandler ) (struct net_device*,int ) ;} ;
struct TYPE_4__ {int (* rx_query_status_descriptor ) (struct net_device*,struct rtllib_rx_stats*,struct rx_desc*,struct sk_buff*) ;} ;


 int LED_CTL_RX ;
 int NIC_8192E ;
 int PCI_DMA_FROMDEVICE ;
 int RTLLIB_24GHZ_BAND ;
 scalar_t__ RTLLIB_FTYPE_MGMT ;
 int RX_MPDU_QUEUE ;
 scalar_t__ WLAN_FC_GET_TYPE (scalar_t__) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int is_multicast_ether_addr (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int rtllib_rx (TYPE_3__*,struct sk_buff*,struct rtllib_rx_stats*) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_tail_pointer_rsl (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;
 int stub1 (struct net_device*,struct rtllib_rx_stats*,struct rx_desc*,struct sk_buff*) ;
 int stub2 (struct net_device*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void _rtl92e_rx_normal(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rtllib_hdr_1addr *rtllib_hdr = ((void*)0);
 bool unicast_packet = 0;
 bool bLedBlinking = 1;
 u16 fc = 0, type = 0;
 u32 skb_len = 0;
 int rx_queue_idx = RX_MPDU_QUEUE;

 struct rtllib_rx_stats stats = {
  .signal = 0,
  .noise = (u8)-98,
  .rate = 0,
  .freq = RTLLIB_24GHZ_BAND,
 };
 unsigned int count = priv->rxringcount;

 stats.nic_type = NIC_8192E;

 while (count--) {
  struct rx_desc *pdesc = &priv->rx_ring[rx_queue_idx]
     [priv->rx_idx[rx_queue_idx]];
  struct sk_buff *skb = priv->rx_buf[rx_queue_idx]
          [priv->rx_idx[rx_queue_idx]];
  struct sk_buff *new_skb;

  if (pdesc->OWN)
   return;
  if (!priv->ops->rx_query_status_descriptor(dev, &stats,
  pdesc, skb))
   goto done;
  new_skb = dev_alloc_skb(priv->rxbuffersize);



  if (unlikely(!new_skb))
   goto done;

  pci_unmap_single(priv->pdev,
    *((dma_addr_t *)skb->cb),
    priv->rxbuffersize,
    PCI_DMA_FROMDEVICE);

  skb_put(skb, pdesc->Length);
  skb_reserve(skb, stats.RxDrvInfoSize +
   stats.RxBufShift);
  skb_trim(skb, skb->len - 4 );
  rtllib_hdr = (struct rtllib_hdr_1addr *)skb->data;
  if (!is_multicast_ether_addr(rtllib_hdr->addr1)) {

   unicast_packet = 1;
  }
  fc = le16_to_cpu(rtllib_hdr->frame_ctl);
  type = WLAN_FC_GET_TYPE(fc);
  if (type == RTLLIB_FTYPE_MGMT)
   bLedBlinking = 0;

  if (bLedBlinking)
   if (priv->rtllib->LedControlHandler)
    priv->rtllib->LedControlHandler(dev,
       LED_CTL_RX);

  if (stats.bCRC) {
   if (type != RTLLIB_FTYPE_MGMT)
    priv->stats.rxdatacrcerr++;
   else
    priv->stats.rxmgmtcrcerr++;
  }

  skb_len = skb->len;

  if (!rtllib_rx(priv->rtllib, skb, &stats)) {
   dev_kfree_skb_any(skb);
  } else {
   priv->stats.rxok++;
   if (unicast_packet)
    priv->stats.rxbytesunicast += skb_len;
  }

  skb = new_skb;
  skb->dev = dev;

  priv->rx_buf[rx_queue_idx][priv->rx_idx[rx_queue_idx]] =
         skb;
  *((dma_addr_t *)skb->cb) = pci_map_single(priv->pdev,
         skb_tail_pointer_rsl(skb),
         priv->rxbuffersize,
         PCI_DMA_FROMDEVICE);
  if (pci_dma_mapping_error(priv->pdev,
       *((dma_addr_t *)skb->cb))) {
   dev_kfree_skb_any(skb);
   return;
  }
done:
  pdesc->BufferAddress = *((dma_addr_t *)skb->cb);
  pdesc->OWN = 1;
  pdesc->Length = priv->rxbuffersize;
  if (priv->rx_idx[rx_queue_idx] == priv->rxringcount - 1)
   pdesc->EOR = 1;
  priv->rx_idx[rx_queue_idx] = (priv->rx_idx[rx_queue_idx] + 1) %
           priv->rxringcount;
 }

}
