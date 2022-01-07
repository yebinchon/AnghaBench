
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct tee_param {int dummy; } ;
struct tee_context {scalar_t__ supp_nowait; int teedev; } ;
struct optee_supp_req {size_t num_params; int in_queue; void* ret; int link; int c; struct tee_param* param; void* func; } ;
struct optee_supp {int mutex; int ctx; int reqs_c; int reqs; } ;
struct optee {struct optee_supp supp; } ;


 int GFP_KERNEL ;
 void* TEEC_ERROR_COMMUNICATION ;
 void* TEEC_ERROR_OUT_OF_MEMORY ;
 int complete (int *) ;
 int init_completion (int *) ;
 int kfree (struct optee_supp_req*) ;
 struct optee_supp_req* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct optee* tee_get_drvdata (int ) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

u32 optee_supp_thrd_req(struct tee_context *ctx, u32 func, size_t num_params,
   struct tee_param *param)

{
 struct optee *optee = tee_get_drvdata(ctx->teedev);
 struct optee_supp *supp = &optee->supp;
 struct optee_supp_req *req;
 bool interruptable;
 u32 ret;





 if (!supp->ctx && ctx->supp_nowait)
  return TEEC_ERROR_COMMUNICATION;

 req = kzalloc(sizeof(*req), GFP_KERNEL);
 if (!req)
  return TEEC_ERROR_OUT_OF_MEMORY;

 init_completion(&req->c);
 req->func = func;
 req->num_params = num_params;
 req->param = param;


 mutex_lock(&supp->mutex);
 list_add_tail(&req->link, &supp->reqs);
 req->in_queue = 1;
 mutex_unlock(&supp->mutex);


 complete(&supp->reqs_c);






 while (wait_for_completion_interruptible(&req->c)) {
  mutex_lock(&supp->mutex);
  interruptable = !supp->ctx;
  if (interruptable) {
   if (req->in_queue) {
    list_del(&req->link);
    req->in_queue = 0;
   }
  }
  mutex_unlock(&supp->mutex);

  if (interruptable) {
   req->ret = TEEC_ERROR_COMMUNICATION;
   break;
  }
 }

 ret = req->ret;
 kfree(req);

 return ret;
}
