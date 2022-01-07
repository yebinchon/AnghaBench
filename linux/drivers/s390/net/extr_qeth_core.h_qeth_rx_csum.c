
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int ip_summed; } ;
struct qeth_card {TYPE_1__* dev; } ;
struct TYPE_2__ {int features; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int NETIF_F_RXCSUM ;
 int QETH_CARD_STAT_INC (struct qeth_card*,int ) ;
 int QETH_HDR_EXT_CSUM_TRANSP_REQ ;
 int rx_skb_csum ;

__attribute__((used)) static inline void qeth_rx_csum(struct qeth_card *card, struct sk_buff *skb,
    u8 flags)
{
 if ((card->dev->features & NETIF_F_RXCSUM) &&
     (flags & QETH_HDR_EXT_CSUM_TRANSP_REQ)) {
  skb->ip_summed = CHECKSUM_UNNECESSARY;
  QETH_CARD_STAT_INC(card, rx_skb_csum);
 } else {
  skb->ip_summed = CHECKSUM_NONE;
 }
}
