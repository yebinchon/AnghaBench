
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zcrypt_queue {TYPE_2__* queue; int online; } ;
struct TYPE_6__ {int type; int reply_code; } ;
struct TYPE_4__ {int cprb_ver_id; } ;
struct type86_ep11_reply {TYPE_3__ hdr; TYPE_1__ cprbx; } ;
struct ep11_urb {int dummy; } ;
struct ap_message {struct type86_ep11_reply* message; } ;
struct TYPE_5__ {int qid; } ;


 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 int DBF_ERR ;
 int EAGAIN ;



 int ZCRYPT_DBF (int ,char*,int ,int ,int) ;
 int convert_error (struct zcrypt_queue*,struct ap_message*) ;
 int convert_type86_ep11_xcrb (struct zcrypt_queue*,struct ap_message*,struct ep11_urb*) ;
 int pr_err (char*,int ,int ) ;

__attribute__((used)) static int convert_response_ep11_xcrb(struct zcrypt_queue *zq,
 struct ap_message *reply, struct ep11_urb *xcRB)
{
 struct type86_ep11_reply *msg = reply->message;

 switch (msg->hdr.type) {
 case 130:
 case 128:
  return convert_error(zq, reply);
 case 129:
  if (msg->hdr.reply_code)
   return convert_error(zq, reply);
  if (msg->cprbx.cprb_ver_id == 0x04)
   return convert_type86_ep11_xcrb(zq, reply, xcRB);

 default:
  zq->online = 0;
  pr_err("Cryptographic device %02x.%04x failed and was set offline\n",
         AP_QID_CARD(zq->queue->qid),
         AP_QID_QUEUE(zq->queue->qid));
  ZCRYPT_DBF(DBF_ERR,
      "device=%02x.%04x rtype=0x%02x => online=0 rc=EAGAIN\n",
      AP_QID_CARD(zq->queue->qid),
      AP_QID_QUEUE(zq->queue->qid),
      (int) msg->hdr.type);
  return -EAGAIN;
 }
}
