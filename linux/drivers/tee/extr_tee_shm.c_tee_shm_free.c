
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int flags; int dmabuf; } ;


 int TEE_SHM_DMA_BUF ;
 int dma_buf_put (int ) ;
 int tee_shm_release (struct tee_shm*) ;

void tee_shm_free(struct tee_shm *shm)
{







 if (shm->flags & TEE_SHM_DMA_BUF)
  dma_buf_put(shm->dmabuf);
 else
  tee_shm_release(shm);
}
