
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int flags; int size; scalar_t__ kaddr; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 int TEE_SHM_MAPPED ;
 int tee_shm_get_pa (struct tee_shm*,unsigned long,int *) ;

int tee_shm_va2pa(struct tee_shm *shm, void *va, phys_addr_t *pa)
{
 if (!(shm->flags & TEE_SHM_MAPPED))
  return -EINVAL;

 if ((char *)va < (char *)shm->kaddr)
  return -EINVAL;
 if ((char *)va >= ((char *)shm->kaddr + shm->size))
  return -EINVAL;

 return tee_shm_get_pa(
   shm, (unsigned long)va - (unsigned long)shm->kaddr, pa);
}
