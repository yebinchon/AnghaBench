
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int * ops; int private_data; } ;
typedef size_t const phys_addr_t ;


 int EINVAL ;
 int ENOMEM ;
 struct tee_shm_pool_mgr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int gen_pool_add_virt (int ,unsigned long,size_t const,size_t,int) ;
 int gen_pool_best_fit ;
 int gen_pool_create (int,int) ;
 int gen_pool_destroy (int ) ;
 int gen_pool_set_algo (int ,int ,int *) ;
 int kfree (struct tee_shm_pool_mgr*) ;
 struct tee_shm_pool_mgr* kzalloc (int,int ) ;
 int pool_ops_generic ;

struct tee_shm_pool_mgr *tee_shm_pool_mgr_alloc_res_mem(unsigned long vaddr,
       phys_addr_t paddr,
       size_t size,
       int min_alloc_order)
{
 const size_t page_mask = PAGE_SIZE - 1;
 struct tee_shm_pool_mgr *mgr;
 int rc;


 if (vaddr & page_mask || paddr & page_mask || size & page_mask)
  return ERR_PTR(-EINVAL);

 mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);
 if (!mgr)
  return ERR_PTR(-ENOMEM);

 mgr->private_data = gen_pool_create(min_alloc_order, -1);
 if (!mgr->private_data) {
  rc = -ENOMEM;
  goto err;
 }

 gen_pool_set_algo(mgr->private_data, gen_pool_best_fit, ((void*)0));
 rc = gen_pool_add_virt(mgr->private_data, vaddr, paddr, size, -1);
 if (rc) {
  gen_pool_destroy(mgr->private_data);
  goto err;
 }

 mgr->ops = &pool_ops_generic;

 return mgr;
err:
 kfree(mgr);

 return ERR_PTR(rc);
}
