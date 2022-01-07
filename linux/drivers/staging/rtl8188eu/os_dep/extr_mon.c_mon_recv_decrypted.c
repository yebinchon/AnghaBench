
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int protocol; int ip_summed; } ;
struct net_device {int dummy; } ;


 int CHECKSUM_UNNECESSARY ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,int const*,int) ;
 int unprotect_frame (struct sk_buff*,int,int) ;

__attribute__((used)) static void mon_recv_decrypted(struct net_device *dev, const u8 *data,
          int data_len, int iv_len, int icv_len)
{
 struct sk_buff *skb;

 skb = netdev_alloc_skb(dev, data_len);
 if (!skb)
  return;
 skb_put_data(skb, data, data_len);





 unprotect_frame(skb, iv_len, icv_len);

 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb->protocol = eth_type_trans(skb, dev);
 netif_rx(skb);
}
