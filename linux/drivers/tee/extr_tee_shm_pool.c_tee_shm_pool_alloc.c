
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int dummy; } ;
struct tee_shm_pool {struct tee_shm_pool_mgr* dma_buf_mgr; struct tee_shm_pool_mgr* private_mgr; } ;


 int EINVAL ;
 int ENOMEM ;
 struct tee_shm_pool* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int check_mgr_ops (struct tee_shm_pool_mgr*) ;
 struct tee_shm_pool* kzalloc (int,int ) ;

struct tee_shm_pool *tee_shm_pool_alloc(struct tee_shm_pool_mgr *priv_mgr,
     struct tee_shm_pool_mgr *dmabuf_mgr)
{
 struct tee_shm_pool *pool;

 if (!check_mgr_ops(priv_mgr) || !check_mgr_ops(dmabuf_mgr))
  return ERR_PTR(-EINVAL);

 pool = kzalloc(sizeof(*pool), GFP_KERNEL);
 if (!pool)
  return ERR_PTR(-ENOMEM);

 pool->private_mgr = priv_mgr;
 pool->dma_buf_mgr = dmabuf_mgr;

 return pool;
}
