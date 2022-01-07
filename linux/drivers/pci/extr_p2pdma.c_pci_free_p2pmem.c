
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct percpu_ref {int dummy; } ;
struct pci_dev {TYPE_1__* p2pdma; } ;
struct TYPE_2__ {int pool; } ;


 int gen_pool_free_owner (int ,uintptr_t,size_t,void**) ;
 int percpu_ref_put (struct percpu_ref*) ;

void pci_free_p2pmem(struct pci_dev *pdev, void *addr, size_t size)
{
 struct percpu_ref *ref;

 gen_pool_free_owner(pdev->p2pdma->pool, (uintptr_t)addr, size,
   (void **) &ref);
 percpu_ref_put(ref);
}
