
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int flags; int dmabuf; } ;


 int EINVAL ;
 int O_CLOEXEC ;
 int TEE_SHM_DMA_BUF ;
 int dma_buf_fd (int ,int ) ;
 int dma_buf_put (int ) ;
 int get_dma_buf (int ) ;

int tee_shm_get_fd(struct tee_shm *shm)
{
 int fd;

 if (!(shm->flags & TEE_SHM_DMA_BUF))
  return -EINVAL;

 get_dma_buf(shm->dmabuf);
 fd = dma_buf_fd(shm->dmabuf, O_CLOEXEC);
 if (fd < 0)
  dma_buf_put(shm->dmabuf);
 return fd;
}
