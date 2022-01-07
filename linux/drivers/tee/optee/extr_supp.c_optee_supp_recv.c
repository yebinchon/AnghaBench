
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int a; scalar_t__ c; scalar_t__ b; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
struct tee_param {int attr; TYPE_2__ u; } ;
struct tee_device {int dummy; } ;
struct tee_context {struct tee_device* teedev; } ;
struct optee_supp_req {size_t func; size_t num_params; int param; } ;
struct optee_supp {int req_id; int mutex; int reqs_c; } ;
struct optee {struct optee_supp supp; } ;


 int ERESTARTSYS ;
 scalar_t__ IS_ERR (struct optee_supp_req*) ;
 int PTR_ERR (struct optee_supp_req*) ;
 int TEE_IOCTL_PARAM_ATTR_META ;
 int TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT ;
 int memcpy (struct tee_param*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int supp_check_recv_params (size_t,struct tee_param*,size_t*) ;
 struct optee_supp_req* supp_pop_entry (struct optee_supp*,size_t,int*) ;
 struct optee* tee_get_drvdata (struct tee_device*) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

int optee_supp_recv(struct tee_context *ctx, u32 *func, u32 *num_params,
      struct tee_param *param)
{
 struct tee_device *teedev = ctx->teedev;
 struct optee *optee = tee_get_drvdata(teedev);
 struct optee_supp *supp = &optee->supp;
 struct optee_supp_req *req = ((void*)0);
 int id;
 size_t num_meta;
 int rc;

 rc = supp_check_recv_params(*num_params, param, &num_meta);
 if (rc)
  return rc;

 while (1) {
  mutex_lock(&supp->mutex);
  req = supp_pop_entry(supp, *num_params - num_meta, &id);
  mutex_unlock(&supp->mutex);

  if (req) {
   if (IS_ERR(req))
    return PTR_ERR(req);
   break;
  }
  if (wait_for_completion_interruptible(&supp->reqs_c))
   return -ERESTARTSYS;
 }

 if (num_meta) {




  param->attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT |
         TEE_IOCTL_PARAM_ATTR_META;
  param->u.value.a = id;
  param->u.value.b = 0;
  param->u.value.c = 0;
 } else {
  mutex_lock(&supp->mutex);
  supp->req_id = id;
  mutex_unlock(&supp->mutex);
 }

 *func = req->func;
 *num_params = req->num_params + num_meta;
 memcpy(param + num_meta, req->param,
        sizeof(struct tee_param) * req->num_params);

 return 0;
}
