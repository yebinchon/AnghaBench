
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {unsigned int len; int dev; int protocol; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_10__ {TYPE_4__ l3; } ;
struct qeth_hdr {TYPE_5__ hdr; } ;
struct TYPE_8__ {size_t b_index; int e_offset; int b_element; } ;
struct TYPE_7__ {TYPE_1__* in_q; } ;
struct qeth_card {int napi; TYPE_3__ rx; TYPE_2__ qdio; } ;
struct TYPE_6__ {int * bufs; } ;


 int CTRL ;
 int QETH_CARD_STAT_ADD (struct qeth_card*,int ,unsigned int) ;
 int QETH_CARD_STAT_INC (struct qeth_card*,int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_HEX (int ,int,struct qeth_hdr*,int) ;


 int WARN_ON_ONCE (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct sk_buff* qeth_core_get_next_skb (struct qeth_card*,int *,int *,int *,struct qeth_hdr**) ;
 int qeth_l3_rebuild_skb (struct qeth_card*,struct sk_buff*,struct qeth_hdr*) ;
 int rx_bytes ;
 int rx_packets ;

__attribute__((used)) static int qeth_l3_process_inbound_buffer(struct qeth_card *card,
    int budget, int *done)
{
 int work_done = 0;
 struct sk_buff *skb;
 struct qeth_hdr *hdr;
 unsigned int len;

 *done = 0;
 WARN_ON_ONCE(!budget);
 while (budget) {
  skb = qeth_core_get_next_skb(card,
   &card->qdio.in_q->bufs[card->rx.b_index],
   &card->rx.b_element, &card->rx.e_offset, &hdr);
  if (!skb) {
   *done = 1;
   break;
  }
  switch (hdr->hdr.l3.id) {
  case 128:
   qeth_l3_rebuild_skb(card, skb, hdr);

  case 129:
   skb->protocol = eth_type_trans(skb, skb->dev);
   len = skb->len;
   napi_gro_receive(&card->napi, skb);
   break;
  default:
   dev_kfree_skb_any(skb);
   QETH_CARD_TEXT(card, 3, "inbunkno");
   QETH_DBF_HEX(CTRL, 3, hdr, sizeof(*hdr));
   continue;
  }
  work_done++;
  budget--;
  QETH_CARD_STAT_INC(card, rx_packets);
  QETH_CARD_STAT_ADD(card, rx_bytes, len);
 }
 return work_done;
}
