
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int shm; } ;
struct TYPE_7__ {int c; int b; int a; } ;
struct TYPE_9__ {TYPE_3__ memref; TYPE_2__ value; } ;
struct tee_param {int attr; TYPE_4__ u; } ;
struct TYPE_6__ {int c; int b; int a; } ;
struct TYPE_10__ {TYPE_1__ value; } ;
struct optee_msg_param {int attr; TYPE_5__ u; } ;


 int EINVAL ;
 int OPTEE_MSG_ATTR_TYPE_VALUE_INPUT ;







 int memset (TYPE_5__*,int ,int) ;
 int tee_shm_is_registered (int ) ;
 int to_msg_param_reg_mem (struct optee_msg_param*,struct tee_param const*) ;
 int to_msg_param_tmp_mem (struct optee_msg_param*,struct tee_param const*) ;

int optee_to_msg_param(struct optee_msg_param *msg_params, size_t num_params,
         const struct tee_param *params)
{
 int rc;
 size_t n;

 for (n = 0; n < num_params; n++) {
  const struct tee_param *p = params + n;
  struct optee_msg_param *mp = msg_params + n;

  switch (p->attr) {
  case 131:
   mp->attr = 131;
   memset(&mp->u, 0, sizeof(mp->u));
   break;
  case 129:
  case 128:
  case 130:
   mp->attr = OPTEE_MSG_ATTR_TYPE_VALUE_INPUT + p->attr -
       129;
   mp->u.value.a = p->u.value.a;
   mp->u.value.b = p->u.value.b;
   mp->u.value.c = p->u.value.c;
   break;
  case 133:
  case 132:
  case 134:
   if (tee_shm_is_registered(p->u.memref.shm))
    rc = to_msg_param_reg_mem(mp, p);
   else
    rc = to_msg_param_tmp_mem(mp, p);
   if (rc)
    return rc;
   break;
  default:
   return -EINVAL;
  }
 }
 return 0;
}
