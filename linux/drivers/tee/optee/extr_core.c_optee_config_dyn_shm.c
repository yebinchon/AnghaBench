
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int dummy; } ;
typedef void tee_shm_pool ;


 scalar_t__ IS_ERR (void*) ;
 void* optee_shm_pool_alloc_pages () ;
 void* tee_shm_pool_alloc (struct tee_shm_pool_mgr*,struct tee_shm_pool_mgr*) ;
 int tee_shm_pool_mgr_destroy (struct tee_shm_pool_mgr*) ;

__attribute__((used)) static struct tee_shm_pool *optee_config_dyn_shm(void)
{
 struct tee_shm_pool_mgr *priv_mgr;
 struct tee_shm_pool_mgr *dmabuf_mgr;
 void *rc;

 rc = optee_shm_pool_alloc_pages();
 if (IS_ERR(rc))
  return rc;
 priv_mgr = rc;

 rc = optee_shm_pool_alloc_pages();
 if (IS_ERR(rc)) {
  tee_shm_pool_mgr_destroy(priv_mgr);
  return rc;
 }
 dmabuf_mgr = rc;

 rc = tee_shm_pool_alloc(priv_mgr, dmabuf_mgr);
 if (IS_ERR(rc)) {
  tee_shm_pool_mgr_destroy(priv_mgr);
  tee_shm_pool_mgr_destroy(dmabuf_mgr);
 }

 return rc;
}
