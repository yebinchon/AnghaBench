
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool {scalar_t__ dma_buf_mgr; scalar_t__ private_mgr; } ;


 int kfree (struct tee_shm_pool*) ;
 int tee_shm_pool_mgr_destroy (scalar_t__) ;

void tee_shm_pool_free(struct tee_shm_pool *pool)
{
 if (pool->private_mgr)
  tee_shm_pool_mgr_destroy(pool->private_mgr);
 if (pool->dma_buf_mgr)
  tee_shm_pool_mgr_destroy(pool->dma_buf_mgr);
 kfree(pool);
}
