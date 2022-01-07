
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct zcrypt_queue {TYPE_3__* queue; int online; } ;
struct TYPE_8__ {int type; int reply_code; } ;
struct TYPE_6__ {int cprb_ver_id; } ;
struct TYPE_5__ {int apfs; } ;
struct type86x_reply {TYPE_4__ hdr; TYPE_2__ cprbx; TYPE_1__ fmt2; } ;
struct ica_xcRB {int status; } ;
struct ap_message {struct type86x_reply* message; } ;
struct TYPE_7__ {int qid; } ;


 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 int DBF_ERR ;
 int EAGAIN ;



 int ZCRYPT_DBF (int ,char*,int ,int ,int) ;
 int convert_error (struct zcrypt_queue*,struct ap_message*) ;
 int convert_type86_xcrb (struct zcrypt_queue*,struct ap_message*,struct ica_xcRB*) ;
 int memcpy (int*,int ,int) ;
 int pr_err (char*,int ,int ) ;

__attribute__((used)) static int convert_response_xcrb(struct zcrypt_queue *zq,
       struct ap_message *reply,
       struct ica_xcRB *xcRB)
{
 struct type86x_reply *msg = reply->message;

 switch (msg->hdr.type) {
 case 130:
 case 128:
  xcRB->status = 0x0008044DL;
  return convert_error(zq, reply);
 case 129:
  if (msg->hdr.reply_code) {
   memcpy(&(xcRB->status), msg->fmt2.apfs, sizeof(u32));
   return convert_error(zq, reply);
  }
  if (msg->cprbx.cprb_ver_id == 0x02)
   return convert_type86_xcrb(zq, reply, xcRB);

 default:
  xcRB->status = 0x0008044DL;
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
