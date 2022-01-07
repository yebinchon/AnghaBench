
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bman_pool {int bpid; } ;


 int GFP_KERNEL ;
 scalar_t__ bm_alloc_bpid_range (int *,int) ;
 int bm_release_bpid (int ) ;
 int kfree (struct bman_pool*) ;
 struct bman_pool* kmalloc (int,int ) ;

struct bman_pool *bman_new_pool(void)
{
 struct bman_pool *pool = ((void*)0);
 u32 bpid;

 if (bm_alloc_bpid_range(&bpid, 1))
  return ((void*)0);

 pool = kmalloc(sizeof(*pool), GFP_KERNEL);
 if (!pool)
  goto err;

 pool->bpid = bpid;

 return pool;
err:
 bm_release_bpid(bpid);
 kfree(pool);
 return ((void*)0);
}
