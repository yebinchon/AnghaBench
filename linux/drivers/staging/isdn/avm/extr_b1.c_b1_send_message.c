
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_3__ {int ncci_head; TYPE_2__* card; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_4__ {unsigned int port; int lock; } ;
typedef TYPE_2__ avmcard ;


 scalar_t__ CAPICMD (int ,int ) ;
 int CAPIMSG_APPID (scalar_t__) ;
 int CAPIMSG_COMMAND (scalar_t__) ;
 scalar_t__ CAPIMSG_DATALEN (scalar_t__) ;
 scalar_t__ CAPIMSG_LEN (scalar_t__) ;
 int CAPIMSG_MSGID (scalar_t__) ;
 int CAPIMSG_NCCI (scalar_t__) ;
 int CAPIMSG_SUBCOMMAND (scalar_t__) ;
 scalar_t__ CAPI_DATA_B3_REQ ;
 scalar_t__ CAPI_NOERROR ;
 int SEND_DATA_B3_REQ ;
 int SEND_MESSAGE ;
 int b1_put_byte (unsigned int,int ) ;
 int b1_put_slice (unsigned int,scalar_t__,scalar_t__) ;
 scalar_t__ capilib_data_b3_req (int *,int ,int ,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u16 b1_send_message(struct capi_ctr *ctrl, struct sk_buff *skb)
{
 avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
 avmcard *card = cinfo->card;
 unsigned int port = card->port;
 unsigned long flags;
 u16 len = CAPIMSG_LEN(skb->data);
 u8 cmd = CAPIMSG_COMMAND(skb->data);
 u8 subcmd = CAPIMSG_SUBCOMMAND(skb->data);
 u16 dlen, retval;

 spin_lock_irqsave(&card->lock, flags);
 if (CAPICMD(cmd, subcmd) == CAPI_DATA_B3_REQ) {
  retval = capilib_data_b3_req(&cinfo->ncci_head,
          CAPIMSG_APPID(skb->data),
          CAPIMSG_NCCI(skb->data),
          CAPIMSG_MSGID(skb->data));
  if (retval != CAPI_NOERROR) {
   spin_unlock_irqrestore(&card->lock, flags);
   return retval;
  }

  dlen = CAPIMSG_DATALEN(skb->data);

  b1_put_byte(port, SEND_DATA_B3_REQ);
  b1_put_slice(port, skb->data, len);
  b1_put_slice(port, skb->data + len, dlen);
 } else {
  b1_put_byte(port, SEND_MESSAGE);
  b1_put_slice(port, skb->data, len);
 }
 spin_unlock_irqrestore(&card->lock, flags);

 dev_kfree_skb_any(skb);
 return CAPI_NOERROR;
}
