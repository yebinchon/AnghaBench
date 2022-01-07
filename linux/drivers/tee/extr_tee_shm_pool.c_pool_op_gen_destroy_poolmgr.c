
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int private_data; } ;


 int gen_pool_destroy (int ) ;
 int kfree (struct tee_shm_pool_mgr*) ;

__attribute__((used)) static void pool_op_gen_destroy_poolmgr(struct tee_shm_pool_mgr *poolm)
{
 gen_pool_destroy(poolm->private_data);
 kfree(poolm);
}
