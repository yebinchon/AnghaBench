
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct llt_ndlc {int sm_work; int send_q; } ;


 int PCB_DATAFRAME_RETRANSMIT_NO ;
 int PCB_FRAME_CRC_INFO_NOTPRESENT ;
 int PCB_TYPE_DATAFRAME ;
 int schedule_work (int *) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int ndlc_send(struct llt_ndlc *ndlc, struct sk_buff *skb)
{

 u8 pcb = PCB_TYPE_DATAFRAME | PCB_DATAFRAME_RETRANSMIT_NO |
  PCB_FRAME_CRC_INFO_NOTPRESENT;

 *(u8 *)skb_push(skb, 1) = pcb;
 skb_queue_tail(&ndlc->send_q, skb);

 schedule_work(&ndlc->sm_work);

 return 0;
}
