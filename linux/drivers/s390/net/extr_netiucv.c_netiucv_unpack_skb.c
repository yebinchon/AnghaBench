
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int ip_summed; int protocol; struct net_device* dev; scalar_t__ data; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct netiucv_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
struct ll_header {scalar_t__ next; } ;
struct iucv_connection {struct net_device* netdev; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int ETH_P_IP ;
 int IUCV_DBF_TEXT (int ,int,char*) ;
 int IUCV_DBF_TEXT_ (int ,int,char*,scalar_t__,scalar_t__) ;
 scalar_t__ NETIUCV_HDRLEN ;
 int cpu_to_be16 (int ) ;
 int data ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 struct netiucv_priv* netdev_priv (struct net_device*) ;
 int netif_rx_ni (struct sk_buff*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,scalar_t__) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static void netiucv_unpack_skb(struct iucv_connection *conn,
          struct sk_buff *pskb)
{
 struct net_device *dev = conn->netdev;
 struct netiucv_priv *privptr = netdev_priv(dev);
 u16 offset = 0;

 skb_put(pskb, NETIUCV_HDRLEN);
 pskb->dev = dev;
 pskb->ip_summed = CHECKSUM_NONE;
 pskb->protocol = cpu_to_be16(ETH_P_IP);

 while (1) {
  struct sk_buff *skb;
  struct ll_header *header = (struct ll_header *) pskb->data;

  if (!header->next)
   break;

  skb_pull(pskb, NETIUCV_HDRLEN);
  header->next -= offset;
  offset += header->next;
  header->next -= NETIUCV_HDRLEN;
  if (skb_tailroom(pskb) < header->next) {
   IUCV_DBF_TEXT_(data, 2, "Illegal next field: %d > %d\n",
    header->next, skb_tailroom(pskb));
   return;
  }
  skb_put(pskb, header->next);
  skb_reset_mac_header(pskb);
  skb = dev_alloc_skb(pskb->len);
  if (!skb) {
   IUCV_DBF_TEXT(data, 2,
    "Out of memory in netiucv_unpack_skb\n");
   privptr->stats.rx_dropped++;
   return;
  }
  skb_copy_from_linear_data(pskb, skb_put(skb, pskb->len),
       pskb->len);
  skb_reset_mac_header(skb);
  skb->dev = pskb->dev;
  skb->protocol = pskb->protocol;
  pskb->ip_summed = CHECKSUM_UNNECESSARY;
  privptr->stats.rx_packets++;
  privptr->stats.rx_bytes += skb->len;




  netif_rx_ni(skb);
  skb_pull(pskb, header->next);
  skb_put(pskb, NETIUCV_HDRLEN);
 }
}
