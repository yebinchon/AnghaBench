
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zcrypt_queue {int queue; TYPE_1__* zcard; } ;
struct ica_rsa_modexpo_crt {int outputdatalength; int outputdata; } ;
struct completion {int dummy; } ;
struct ap_message {int rc; void* message; struct completion* private; scalar_t__ psmid; int receive; } ;
struct TYPE_4__ {scalar_t__ pid; } ;
struct TYPE_3__ {scalar_t__ user_space_type; } ;


 long ENOMEM ;
 int GFP_KERNEL ;
 int ICACRT_msg_to_type50CRT_msg (struct zcrypt_queue*,struct ap_message*,struct ica_rsa_modexpo_crt*) ;
 int MSGTYPE50_CRB2_MAX_MSG_SIZE ;
 int MSGTYPE50_CRB3_MAX_MSG_SIZE ;
 scalar_t__ ZCRYPT_CEX2A ;
 int ap_cancel_message (int ,struct ap_message*) ;
 int ap_init_message (struct ap_message*) ;
 int ap_queue_message (int ,struct ap_message*) ;
 scalar_t__ atomic_inc_return (int *) ;
 int convert_response (struct zcrypt_queue*,struct ap_message*,int ,int ) ;
 TYPE_2__* current ;
 int init_completion (struct completion*) ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 int wait_for_completion_interruptible (struct completion*) ;
 int zcrypt_cex2a_receive ;
 int zcrypt_step ;

__attribute__((used)) static long zcrypt_cex2a_modexpo_crt(struct zcrypt_queue *zq,
         struct ica_rsa_modexpo_crt *crt)
{
 struct ap_message ap_msg;
 struct completion work;
 int rc;

 ap_init_message(&ap_msg);
 if (zq->zcard->user_space_type == ZCRYPT_CEX2A)
  ap_msg.message = kmalloc(MSGTYPE50_CRB2_MAX_MSG_SIZE,
      GFP_KERNEL);
 else
  ap_msg.message = kmalloc(MSGTYPE50_CRB3_MAX_MSG_SIZE,
      GFP_KERNEL);
 if (!ap_msg.message)
  return -ENOMEM;
 ap_msg.receive = zcrypt_cex2a_receive;
 ap_msg.psmid = (((unsigned long long) current->pid) << 32) +
    atomic_inc_return(&zcrypt_step);
 ap_msg.private = &work;
 rc = ICACRT_msg_to_type50CRT_msg(zq, &ap_msg, crt);
 if (rc)
  goto out_free;
 init_completion(&work);
 ap_queue_message(zq->queue, &ap_msg);
 rc = wait_for_completion_interruptible(&work);
 if (rc == 0) {
  rc = ap_msg.rc;
  if (rc == 0)
   rc = convert_response(zq, &ap_msg, crt->outputdata,
           crt->outputdatalength);
 } else

  ap_cancel_message(zq->queue, &ap_msg);
out_free:
 kfree(ap_msg.message);
 return rc;
}
