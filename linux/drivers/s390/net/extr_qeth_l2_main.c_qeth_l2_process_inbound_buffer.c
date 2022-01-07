
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {unsigned int len; int dev; int protocol; } ;
struct TYPE_10__ {int id; int * flags; } ;
struct TYPE_11__ {TYPE_4__ l2; } ;
struct qeth_hdr {TYPE_5__ hdr; } ;
struct TYPE_12__ {int (* data_cb ) (struct sk_buff*) ;} ;
struct TYPE_9__ {size_t b_index; int e_offset; int b_element; } ;
struct TYPE_8__ {TYPE_1__* in_q; } ;
struct qeth_card {TYPE_6__ osn_info; int napi; TYPE_3__ rx; TYPE_2__ qdio; } ;
struct TYPE_7__ {int * bufs; } ;


 int CTRL ;
 int IS_OSN (struct qeth_card*) ;
 int QETH_CARD_STAT_ADD (struct qeth_card*,int ,unsigned int) ;
 int QETH_CARD_STAT_INC (struct qeth_card*,int ) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_HEX (int ,int,struct qeth_hdr*,int) ;


 int WARN_ON_ONCE (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct sk_buff* qeth_core_get_next_skb (struct qeth_card*,int *,int *,int *,struct qeth_hdr**) ;
 int qeth_rx_csum (struct qeth_card*,struct sk_buff*,int ) ;
 int rx_bytes ;
 int rx_packets ;
 int skb_copy_to_linear_data (struct sk_buff*,struct qeth_hdr*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int qeth_l2_process_inbound_buffer(struct qeth_card *card,
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
  switch (hdr->hdr.l2.id) {
  case 129:
   skb->protocol = eth_type_trans(skb, skb->dev);
   qeth_rx_csum(card, skb, hdr->hdr.l2.flags[1]);
   len = skb->len;
   napi_gro_receive(&card->napi, skb);
   break;
  case 128:
   if (IS_OSN(card)) {
    skb_push(skb, sizeof(struct qeth_hdr));
    skb_copy_to_linear_data(skb, hdr,
      sizeof(struct qeth_hdr));
    len = skb->len;
    card->osn_info.data_cb(skb);
    break;
   }

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
