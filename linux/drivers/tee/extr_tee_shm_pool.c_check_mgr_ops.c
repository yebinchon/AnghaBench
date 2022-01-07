
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tee_shm_pool_mgr {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ destroy_poolmgr; scalar_t__ free; scalar_t__ alloc; } ;



__attribute__((used)) static bool check_mgr_ops(struct tee_shm_pool_mgr *mgr)
{
 return mgr && mgr->ops && mgr->ops->alloc && mgr->ops->free &&
  mgr->ops->destroy_poolmgr;
}
