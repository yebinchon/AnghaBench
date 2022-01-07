
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tee_device {TYPE_1__* desc; } ;
struct tee_context {int list_shm; struct tee_device* teedev; int refcount; } ;
struct TYPE_4__ {int (* open ) (struct tee_context*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int EINVAL ;
 int ENOMEM ;
 struct tee_context* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct tee_context*) ;
 int kref_init (int *) ;
 struct tee_context* kzalloc (int,int ) ;
 int stub1 (struct tee_context*) ;
 int tee_device_get (struct tee_device*) ;
 int tee_device_put (struct tee_device*) ;

__attribute__((used)) static struct tee_context *teedev_open(struct tee_device *teedev)
{
 int rc;
 struct tee_context *ctx;

 if (!tee_device_get(teedev))
  return ERR_PTR(-EINVAL);

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  rc = -ENOMEM;
  goto err;
 }

 kref_init(&ctx->refcount);
 ctx->teedev = teedev;
 INIT_LIST_HEAD(&ctx->list_shm);
 rc = teedev->desc->ops->open(ctx);
 if (rc)
  goto err;

 return ctx;
err:
 kfree(ctx);
 tee_device_put(teedev);
 return ERR_PTR(rc);

}
