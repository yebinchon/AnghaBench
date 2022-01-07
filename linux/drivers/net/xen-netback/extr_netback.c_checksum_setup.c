
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_gso_checksum_fixup; } ;
struct xenvif_queue {TYPE_1__ stats; } ;
struct sk_buff {scalar_t__ ip_summed; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int skb_checksum_setup (struct sk_buff*,int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static int checksum_setup(struct xenvif_queue *queue, struct sk_buff *skb)
{
 bool recalculate_partial_csum = 0;






 if (skb->ip_summed != CHECKSUM_PARTIAL && skb_is_gso(skb)) {
  queue->stats.rx_gso_checksum_fixup++;
  skb->ip_summed = CHECKSUM_PARTIAL;
  recalculate_partial_csum = 1;
 }


 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;

 return skb_checksum_setup(skb, recalculate_partial_csum);
}
