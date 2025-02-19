
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zcrypt_queue {TYPE_1__* zcard; } ;
struct TYPE_4__ {int msg_len; void* msg_type_code; } ;
struct type50_crb3_msg {unsigned char* p; unsigned char* q; unsigned char* dp; unsigned char* dq; unsigned char* u; unsigned char* message; int keyblock_type; TYPE_2__ header; } ;
struct type50_crb2_msg {unsigned char* p; unsigned char* q; unsigned char* dp; unsigned char* dq; unsigned char* u; unsigned char* message; int keyblock_type; TYPE_2__ header; } ;
struct type50_crb1_msg {unsigned char* p; unsigned char* q; unsigned char* dp; unsigned char* dq; unsigned char* u; unsigned char* message; int keyblock_type; TYPE_2__ header; } ;
struct ica_rsa_modexpo_crt {int inputdatalength; scalar_t__ inputdata; scalar_t__ u_mult_inv; scalar_t__ bq_key; scalar_t__ bp_key; scalar_t__ nq_prime; scalar_t__ np_prime; } ;
struct ap_message {int length; struct type50_crb3_msg* message; } ;
struct TYPE_3__ {scalar_t__ max_mod_size; } ;


 scalar_t__ CEX3A_MAX_MOD_SIZE ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ MSGTYPE_ADJUSTMENT ;
 int TYPE50_CRB1_FMT ;
 int TYPE50_CRB2_FMT ;
 int TYPE50_CRB3_FMT ;
 void* TYPE50_TYPE_CODE ;
 scalar_t__ copy_from_user (unsigned char*,scalar_t__,int) ;
 int memset (struct type50_crb3_msg*,int ,int) ;

__attribute__((used)) static int ICACRT_msg_to_type50CRT_msg(struct zcrypt_queue *zq,
           struct ap_message *ap_msg,
           struct ica_rsa_modexpo_crt *crt)
{
 int mod_len, short_len;
 unsigned char *p, *q, *dp, *dq, *u, *inp;

 mod_len = crt->inputdatalength;
 short_len = (mod_len + 1) / 2;







 if (mod_len <= 128) {
  struct type50_crb1_msg *crb1 = ap_msg->message;

  memset(crb1, 0, sizeof(*crb1));
  ap_msg->length = sizeof(*crb1);
  crb1->header.msg_type_code = TYPE50_TYPE_CODE;
  crb1->header.msg_len = sizeof(*crb1);
  crb1->keyblock_type = TYPE50_CRB1_FMT;
  p = crb1->p + sizeof(crb1->p) - short_len;
  q = crb1->q + sizeof(crb1->q) - short_len;
  dp = crb1->dp + sizeof(crb1->dp) - short_len;
  dq = crb1->dq + sizeof(crb1->dq) - short_len;
  u = crb1->u + sizeof(crb1->u) - short_len;
  inp = crb1->message + sizeof(crb1->message) - mod_len;
 } else if (mod_len <= 256) {
  struct type50_crb2_msg *crb2 = ap_msg->message;

  memset(crb2, 0, sizeof(*crb2));
  ap_msg->length = sizeof(*crb2);
  crb2->header.msg_type_code = TYPE50_TYPE_CODE;
  crb2->header.msg_len = sizeof(*crb2);
  crb2->keyblock_type = TYPE50_CRB2_FMT;
  p = crb2->p + sizeof(crb2->p) - short_len;
  q = crb2->q + sizeof(crb2->q) - short_len;
  dp = crb2->dp + sizeof(crb2->dp) - short_len;
  dq = crb2->dq + sizeof(crb2->dq) - short_len;
  u = crb2->u + sizeof(crb2->u) - short_len;
  inp = crb2->message + sizeof(crb2->message) - mod_len;
 } else if ((mod_len <= 512) &&
     (zq->zcard->max_mod_size == CEX3A_MAX_MOD_SIZE)) {
  struct type50_crb3_msg *crb3 = ap_msg->message;

  memset(crb3, 0, sizeof(*crb3));
  ap_msg->length = sizeof(*crb3);
  crb3->header.msg_type_code = TYPE50_TYPE_CODE;
  crb3->header.msg_len = sizeof(*crb3);
  crb3->keyblock_type = TYPE50_CRB3_FMT;
  p = crb3->p + sizeof(crb3->p) - short_len;
  q = crb3->q + sizeof(crb3->q) - short_len;
  dp = crb3->dp + sizeof(crb3->dp) - short_len;
  dq = crb3->dq + sizeof(crb3->dq) - short_len;
  u = crb3->u + sizeof(crb3->u) - short_len;
  inp = crb3->message + sizeof(crb3->message) - mod_len;
 } else
  return -EINVAL;





 if (copy_from_user(p, crt->np_prime + MSGTYPE_ADJUSTMENT, short_len) ||
     copy_from_user(q, crt->nq_prime, short_len) ||
     copy_from_user(dp, crt->bp_key + MSGTYPE_ADJUSTMENT, short_len) ||
     copy_from_user(dq, crt->bq_key, short_len) ||
     copy_from_user(u, crt->u_mult_inv + MSGTYPE_ADJUSTMENT, short_len) ||
     copy_from_user(inp, crt->inputdata, mod_len))
  return -EFAULT;

 return 0;
}
