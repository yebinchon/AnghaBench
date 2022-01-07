
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
struct type86x_reply {TYPE_3__ hdr; TYPE_1__ cprbx; } ;
struct ap_message {struct type86x_reply* message; } ;
struct TYPE_5__ {int qid; } ;


 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 int DBF_ERR ;
 int EAGAIN ;
 int EINVAL ;



 int ZCRYPT_DBF (int ,char*,int ,int ,int) ;
 int convert_type86_rng (struct zcrypt_queue*,struct ap_message*,char*) ;
 int pr_err (char*,int ,int ) ;

__attribute__((used)) static int convert_response_rng(struct zcrypt_queue *zq,
     struct ap_message *reply,
     char *data)
{
 struct type86x_reply *msg = reply->message;

 switch (msg->hdr.type) {
 case 130:
 case 128:
  return -EINVAL;
 case 129:
  if (msg->hdr.reply_code)
   return -EINVAL;
  if (msg->cprbx.cprb_ver_id == 0x02)
   return convert_type86_rng(zq, reply, data);

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
