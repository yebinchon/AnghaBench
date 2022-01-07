
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tee_shm_pool_mgr {TYPE_2__* ops; } ;
struct tee_shm {int flags; size_t num_pages; scalar_t__ ctx; struct tee_shm* pages; int link; int id; struct tee_device* teedev; } ;
struct TYPE_10__ {int parent; } ;
struct tee_device {TYPE_5__ dev; TYPE_4__* desc; TYPE_1__* pool; int mutex; int idr; } ;
struct TYPE_9__ {TYPE_3__* ops; } ;
struct TYPE_8__ {int (* shm_unregister ) (scalar_t__,struct tee_shm*) ;} ;
struct TYPE_7__ {int (* free ) (struct tee_shm_pool_mgr*,struct tee_shm*) ;} ;
struct TYPE_6__ {struct tee_shm_pool_mgr* private_mgr; struct tee_shm_pool_mgr* dma_buf_mgr; } ;


 int TEE_SHM_DMA_BUF ;
 int TEE_SHM_POOL ;
 int TEE_SHM_REGISTER ;
 int dev_err (int ,char*,struct tee_shm*,int) ;
 int idr_remove (int *,int ) ;
 int kfree (struct tee_shm*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_page (struct tee_shm) ;
 int stub1 (struct tee_shm_pool_mgr*,struct tee_shm*) ;
 int stub2 (scalar_t__,struct tee_shm*) ;
 int tee_device_put (struct tee_device*) ;
 int teedev_ctx_put (scalar_t__) ;

__attribute__((used)) static void tee_shm_release(struct tee_shm *shm)
{
 struct tee_device *teedev = shm->teedev;

 mutex_lock(&teedev->mutex);
 idr_remove(&teedev->idr, shm->id);
 if (shm->ctx)
  list_del(&shm->link);
 mutex_unlock(&teedev->mutex);

 if (shm->flags & TEE_SHM_POOL) {
  struct tee_shm_pool_mgr *poolm;

  if (shm->flags & TEE_SHM_DMA_BUF)
   poolm = teedev->pool->dma_buf_mgr;
  else
   poolm = teedev->pool->private_mgr;

  poolm->ops->free(poolm, shm);
 } else if (shm->flags & TEE_SHM_REGISTER) {
  size_t n;
  int rc = teedev->desc->ops->shm_unregister(shm->ctx, shm);

  if (rc)
   dev_err(teedev->dev.parent,
    "unregister shm %p failed: %d", shm, rc);

  for (n = 0; n < shm->num_pages; n++)
   put_page(shm->pages[n]);

  kfree(shm->pages);
 }

 if (shm->ctx)
  teedev_ctx_put(shm->ctx);

 kfree(shm);

 tee_device_put(teedev);
}
