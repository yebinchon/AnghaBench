
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int * ops; } ;


 int ENOMEM ;
 struct tee_shm_pool_mgr* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct tee_shm_pool_mgr* kzalloc (int,int ) ;
 int pool_ops ;

struct tee_shm_pool_mgr *optee_shm_pool_alloc_pages(void)
{
 struct tee_shm_pool_mgr *mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);

 if (!mgr)
  return ERR_PTR(-ENOMEM);

 mgr->ops = &pool_ops;

 return mgr;
}
