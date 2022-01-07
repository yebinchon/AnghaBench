
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int private_data; } ;
struct tee_shm {int * kaddr; int size; } ;


 int gen_pool_free (int ,unsigned long,int ) ;

__attribute__((used)) static void pool_op_gen_free(struct tee_shm_pool_mgr *poolm,
        struct tee_shm *shm)
{
 gen_pool_free(poolm->private_data, (unsigned long)shm->kaddr,
        shm->size);
 shm->kaddr = ((void*)0);
}
