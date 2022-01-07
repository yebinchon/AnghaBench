
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tee_device {int dummy; } ;
struct tee_context {struct optee_context_data* data; struct tee_device* teedev; } ;
struct optee_context_data {int sess_list; int mutex; } ;
struct TYPE_2__ {int mutex; struct tee_context* ctx; } ;
struct optee {TYPE_1__ supp; struct tee_device* supp_teedev; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct optee_context_data*) ;
 struct optee_context_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct optee* tee_get_drvdata (struct tee_device*) ;

__attribute__((used)) static int optee_open(struct tee_context *ctx)
{
 struct optee_context_data *ctxdata;
 struct tee_device *teedev = ctx->teedev;
 struct optee *optee = tee_get_drvdata(teedev);

 ctxdata = kzalloc(sizeof(*ctxdata), GFP_KERNEL);
 if (!ctxdata)
  return -ENOMEM;

 if (teedev == optee->supp_teedev) {
  bool busy = 1;

  mutex_lock(&optee->supp.mutex);
  if (!optee->supp.ctx) {
   busy = 0;
   optee->supp.ctx = ctx;
  }
  mutex_unlock(&optee->supp.mutex);
  if (busy) {
   kfree(ctxdata);
   return -EBUSY;
  }
 }

 mutex_init(&ctxdata->mutex);
 INIT_LIST_HEAD(&ctxdata->sess_list);

 ctx->data = ctxdata;
 return 0;
}
