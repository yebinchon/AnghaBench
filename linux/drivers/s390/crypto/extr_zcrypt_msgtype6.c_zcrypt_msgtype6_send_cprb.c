
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_queue {int queue; } ;
struct response_type {int work; } ;
struct ica_xcRB {int dummy; } ;
struct ap_message {int rc; scalar_t__ private; } ;


 int ap_cancel_message (int ,struct ap_message*) ;
 int ap_queue_message (int ,struct ap_message*) ;
 int convert_response_xcrb (struct zcrypt_queue*,struct ap_message*,struct ica_xcRB*) ;
 int init_completion (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static long zcrypt_msgtype6_send_cprb(struct zcrypt_queue *zq,
        struct ica_xcRB *xcRB,
        struct ap_message *ap_msg)
{
 int rc;
 struct response_type *rtype = (struct response_type *)(ap_msg->private);

 init_completion(&rtype->work);
 ap_queue_message(zq->queue, ap_msg);
 rc = wait_for_completion_interruptible(&rtype->work);
 if (rc == 0) {
  rc = ap_msg->rc;
  if (rc == 0)
   rc = convert_response_xcrb(zq, ap_msg, xcRB);
 } else

  ap_cancel_message(zq->queue, ap_msg);

 return rc;
}
