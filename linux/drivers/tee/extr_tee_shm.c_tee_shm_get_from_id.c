
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int flags; int dmabuf; struct tee_context* ctx; } ;
struct tee_device {int mutex; int idr; } ;
struct tee_context {struct tee_device* teedev; } ;


 int EINVAL ;
 struct tee_shm* ERR_PTR (int ) ;
 int TEE_SHM_DMA_BUF ;
 int get_dma_buf (int ) ;
 struct tee_shm* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct tee_shm *tee_shm_get_from_id(struct tee_context *ctx, int id)
{
 struct tee_device *teedev;
 struct tee_shm *shm;

 if (!ctx)
  return ERR_PTR(-EINVAL);

 teedev = ctx->teedev;
 mutex_lock(&teedev->mutex);
 shm = idr_find(&teedev->idr, id);
 if (!shm || shm->ctx != ctx)
  shm = ERR_PTR(-EINVAL);
 else if (shm->flags & TEE_SHM_DMA_BUF)
  get_dma_buf(shm->dmabuf);
 mutex_unlock(&teedev->mutex);
 return shm;
}
