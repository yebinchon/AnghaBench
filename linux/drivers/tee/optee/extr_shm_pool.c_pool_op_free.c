
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int dummy; } ;
struct tee_shm {int * kaddr; int size; } ;


 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;

__attribute__((used)) static void pool_op_free(struct tee_shm_pool_mgr *poolm,
    struct tee_shm *shm)
{
 free_pages((unsigned long)shm->kaddr, get_order(shm->size));
 shm->kaddr = ((void*)0);
}
