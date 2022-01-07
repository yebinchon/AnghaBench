
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int data; } ;
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_4__ {int ncci_head; TYPE_2__* card; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_2__ avmcard ;


 int CAPIMSG_APPID (int ) ;
 scalar_t__ CAPIMSG_CMD (int ) ;
 int CAPIMSG_MSGID (int ) ;
 int CAPIMSG_NCCI (int ) ;
 scalar_t__ CAPI_DATA_B3_REQ ;
 scalar_t__ CAPI_NOERROR ;
 int b1dma_queue_tx (TYPE_2__*,struct sk_buff*) ;
 scalar_t__ capilib_data_b3_req (int *,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u16 b1dma_send_message(struct capi_ctr *ctrl, struct sk_buff *skb)
{
 avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
 avmcard *card = cinfo->card;
 u16 retval = CAPI_NOERROR;

 if (CAPIMSG_CMD(skb->data) == CAPI_DATA_B3_REQ) {
  unsigned long flags;
  spin_lock_irqsave(&card->lock, flags);
  retval = capilib_data_b3_req(&cinfo->ncci_head,
          CAPIMSG_APPID(skb->data),
          CAPIMSG_NCCI(skb->data),
          CAPIMSG_MSGID(skb->data));
  spin_unlock_irqrestore(&card->lock, flags);
 }
 if (retval == CAPI_NOERROR)
  b1dma_queue_tx(card, skb);

 return retval;
}
