
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {size_t size; scalar_t__ paddr; } ;
typedef scalar_t__ phys_addr_t ;


 int EINVAL ;

int tee_shm_get_pa(struct tee_shm *shm, size_t offs, phys_addr_t *pa)
{
 if (offs >= shm->size)
  return -EINVAL;
 if (pa)
  *pa = shm->paddr + offs;
 return 0;
}
