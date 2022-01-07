
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ashmem_area {unsigned long prot_mask; } ;
struct TYPE_2__ {int personality; } ;


 int EINVAL ;
 unsigned long PROT_EXEC ;
 unsigned long PROT_READ ;
 int READ_IMPLIES_EXEC ;
 int ashmem_mutex ;
 TYPE_1__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int set_prot_mask(struct ashmem_area *asma, unsigned long prot)
{
 int ret = 0;

 mutex_lock(&ashmem_mutex);


 if ((asma->prot_mask & prot) != prot) {
  ret = -EINVAL;
  goto out;
 }


 if ((prot & PROT_READ) && (current->personality & READ_IMPLIES_EXEC))
  prot |= PROT_EXEC;

 asma->prot_mask = prot;

out:
 mutex_unlock(&ashmem_mutex);
 return ret;
}
