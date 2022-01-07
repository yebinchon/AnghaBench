
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {int enabled; int locked_pages; int mm; } ;


 int BUG_ON (int) ;
 int account_locked_vm (int ,int ,int) ;

__attribute__((used)) static void tce_iommu_disable(struct tce_container *container)
{
 if (!container->enabled)
  return;

 container->enabled = 0;

 BUG_ON(!container->mm);
 account_locked_vm(container->mm, container->locked_pages, 0);
}
