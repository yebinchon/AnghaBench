
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ protocol; scalar_t__ cb; } ;
struct TYPE_3__ {unsigned int rx_bytes; int rx_packets; int rx_dropped; } ;
struct lcs_card {scalar_t__ state; scalar_t__ (* lan_type_trans ) (struct sk_buff*,TYPE_2__*) ;scalar_t__ pkt_seq; TYPE_1__ stats; TYPE_2__* dev; } ;
typedef scalar_t__ __u32 ;
struct TYPE_4__ {int name; int dev; } ;


 scalar_t__ DEV_STATE_UP ;
 int ETH_P_802_2 ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int dev_err (int *,char*,int ) ;
 scalar_t__ htons (int ) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,char*,unsigned int) ;
 scalar_t__ stub1 (struct sk_buff*,TYPE_2__*) ;
 int trace ;

__attribute__((used)) static void
lcs_get_skb(struct lcs_card *card, char *skb_data, unsigned int skb_len)
{
 struct sk_buff *skb;

 LCS_DBF_TEXT(5, trace, "getskb");
 if (card->dev == ((void*)0) ||
     card->state != DEV_STATE_UP)

  return;

 skb = dev_alloc_skb(skb_len);
 if (skb == ((void*)0)) {
  dev_err(&card->dev->dev,
   " Allocating a socket buffer to interface %s failed\n",
     card->dev->name);
  card->stats.rx_dropped++;
  return;
 }
 skb_put_data(skb, skb_data, skb_len);
 skb->protocol = card->lan_type_trans(skb, card->dev);
 card->stats.rx_bytes += skb_len;
 card->stats.rx_packets++;
 if (skb->protocol == htons(ETH_P_802_2))
  *((__u32 *)skb->cb) = ++card->pkt_seq;
 netif_rx(skb);
}
