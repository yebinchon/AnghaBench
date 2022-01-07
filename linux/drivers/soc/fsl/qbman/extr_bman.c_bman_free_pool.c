
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bman_pool {int bpid; } ;


 int bm_release_bpid (int ) ;
 int kfree (struct bman_pool*) ;

void bman_free_pool(struct bman_pool *pool)
{
 bm_release_bpid(pool->bpid);

 kfree(pool);
}
