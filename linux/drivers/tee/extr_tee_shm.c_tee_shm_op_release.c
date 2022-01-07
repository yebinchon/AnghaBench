
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int dummy; } ;
struct dma_buf {struct tee_shm* priv; } ;


 int tee_shm_release (struct tee_shm*) ;

__attribute__((used)) static void tee_shm_op_release(struct dma_buf *dmabuf)
{
 struct tee_shm *shm = dmabuf->priv;

 tee_shm_release(shm);
}
