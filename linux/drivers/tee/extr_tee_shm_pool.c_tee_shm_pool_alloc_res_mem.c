
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int dummy; } ;
struct tee_shm_pool_mem_info {int size; int paddr; int vaddr; } ;
typedef void tee_shm_pool ;


 scalar_t__ IS_ERR (void*) ;
 int PAGE_SHIFT ;
 void* tee_shm_pool_alloc (struct tee_shm_pool_mgr*,struct tee_shm_pool_mgr*) ;
 void* tee_shm_pool_mgr_alloc_res_mem (int ,int ,int ,int) ;
 int tee_shm_pool_mgr_destroy (struct tee_shm_pool_mgr*) ;

struct tee_shm_pool *
tee_shm_pool_alloc_res_mem(struct tee_shm_pool_mem_info *priv_info,
      struct tee_shm_pool_mem_info *dmabuf_info)
{
 struct tee_shm_pool_mgr *priv_mgr;
 struct tee_shm_pool_mgr *dmabuf_mgr;
 void *rc;




 rc = tee_shm_pool_mgr_alloc_res_mem(priv_info->vaddr, priv_info->paddr,
         priv_info->size,
         3 );
 if (IS_ERR(rc))
  return rc;
 priv_mgr = rc;




 rc = tee_shm_pool_mgr_alloc_res_mem(dmabuf_info->vaddr,
         dmabuf_info->paddr,
         dmabuf_info->size, PAGE_SHIFT);
 if (IS_ERR(rc))
  goto err_free_priv_mgr;
 dmabuf_mgr = rc;

 rc = tee_shm_pool_alloc(priv_mgr, dmabuf_mgr);
 if (IS_ERR(rc))
  goto err_free_dmabuf_mgr;

 return rc;

err_free_dmabuf_mgr:
 tee_shm_pool_mgr_destroy(dmabuf_mgr);
err_free_priv_mgr:
 tee_shm_pool_mgr_destroy(priv_mgr);

 return rc;
}
