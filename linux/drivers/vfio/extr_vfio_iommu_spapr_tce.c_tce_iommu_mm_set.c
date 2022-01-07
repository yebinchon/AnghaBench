
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tce_container {TYPE_1__* mm; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mm_count; } ;


 int BUG_ON (int) ;
 long EPERM ;
 int atomic_inc (int *) ;
 TYPE_2__* current ;

__attribute__((used)) static long tce_iommu_mm_set(struct tce_container *container)
{
 if (container->mm) {
  if (container->mm == current->mm)
   return 0;
  return -EPERM;
 }
 BUG_ON(!current->mm);
 container->mm = current->mm;
 atomic_inc(&container->mm->mm_count);

 return 0;
}
