
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int c; int b; int a; } ;
struct TYPE_6__ {TYPE_2__ memref; TYPE_1__ value; } ;
struct tee_param {int attr; TYPE_3__ u; } ;
struct tee_device {int dummy; } ;
struct tee_context {struct tee_device* teedev; } ;
struct optee_supp_req {size_t num_params; int c; int ret; struct tee_param* param; } ;
struct optee_supp {int mutex; } ;
struct optee {struct optee_supp supp; } ;


 scalar_t__ IS_ERR (struct optee_supp_req*) ;
 int PTR_ERR (struct optee_supp_req*) ;
 int TEE_IOCTL_PARAM_ATTR_TYPE_MASK ;




 int complete (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct optee_supp_req* supp_pop_req (struct optee_supp*,int ,struct tee_param*,size_t*) ;
 struct optee* tee_get_drvdata (struct tee_device*) ;

int optee_supp_send(struct tee_context *ctx, u32 ret, u32 num_params,
      struct tee_param *param)
{
 struct tee_device *teedev = ctx->teedev;
 struct optee *optee = tee_get_drvdata(teedev);
 struct optee_supp *supp = &optee->supp;
 struct optee_supp_req *req;
 size_t n;
 size_t num_meta;

 mutex_lock(&supp->mutex);
 req = supp_pop_req(supp, num_params, param, &num_meta);
 mutex_unlock(&supp->mutex);

 if (IS_ERR(req)) {

  return PTR_ERR(req);
 }


 for (n = 0; n < req->num_params; n++) {
  struct tee_param *p = req->param + n;

  switch (p->attr & TEE_IOCTL_PARAM_ATTR_TYPE_MASK) {
  case 128:
  case 129:
   p->u.value.a = param[n + num_meta].u.value.a;
   p->u.value.b = param[n + num_meta].u.value.b;
   p->u.value.c = param[n + num_meta].u.value.c;
   break;
  case 130:
  case 131:
   p->u.memref.size = param[n + num_meta].u.memref.size;
   break;
  default:
   break;
  }
 }
 req->ret = ret;


 complete(&req->c);

 return 0;
}
