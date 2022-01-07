
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct response_type {int type; } ;
struct ica_xcRB {int dummy; } ;
struct ap_message {int private; scalar_t__ psmid; int receive; int message; } ;
typedef int resp_type ;
struct TYPE_2__ {scalar_t__ pid; } ;


 int CEXXC_RESPONSE_TYPE_XCRB ;
 unsigned int ENOMEM ;
 int GFP_KERNEL ;
 int MSGTYPE06_MAX_MSG_SIZE ;
 unsigned int XCRB_msg_to_type6CPRB_msgX (struct ap_message*,struct ica_xcRB*,unsigned int*,unsigned short**) ;
 scalar_t__ atomic_inc_return (int *) ;
 TYPE_1__* current ;
 int kmalloc (int ,int ) ;
 int kmemdup (struct response_type*,int,int ) ;
 int zcrypt_msgtype6_receive ;
 int zcrypt_step ;

unsigned int get_cprb_fc(struct ica_xcRB *xcRB,
    struct ap_message *ap_msg,
    unsigned int *func_code, unsigned short **dom)
{
 struct response_type resp_type = {
  .type = CEXXC_RESPONSE_TYPE_XCRB,
 };

 ap_msg->message = kmalloc(MSGTYPE06_MAX_MSG_SIZE, GFP_KERNEL);
 if (!ap_msg->message)
  return -ENOMEM;
 ap_msg->receive = zcrypt_msgtype6_receive;
 ap_msg->psmid = (((unsigned long long) current->pid) << 32) +
    atomic_inc_return(&zcrypt_step);
 ap_msg->private = kmemdup(&resp_type, sizeof(resp_type), GFP_KERNEL);
 if (!ap_msg->private)
  return -ENOMEM;
 return XCRB_msg_to_type6CPRB_msgX(ap_msg, xcRB, func_code, dom);
}
