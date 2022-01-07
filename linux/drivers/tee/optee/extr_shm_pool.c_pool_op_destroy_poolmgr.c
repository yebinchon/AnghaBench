
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int dummy; } ;


 int kfree (struct tee_shm_pool_mgr*) ;

__attribute__((used)) static void pool_op_destroy_poolmgr(struct tee_shm_pool_mgr *poolm)
{
 kfree(poolm);
}
