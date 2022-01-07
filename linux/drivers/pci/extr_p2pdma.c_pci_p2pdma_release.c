
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_p2pdma {int map_types; int pool; } ;
struct TYPE_2__ {int kobj; } ;
struct pci_dev {TYPE_1__ dev; struct pci_p2pdma* p2pdma; } ;


 int gen_pool_destroy (int ) ;
 int p2pmem_group ;
 int synchronize_rcu () ;
 int sysfs_remove_group (int *,int *) ;
 int xa_destroy (int *) ;

__attribute__((used)) static void pci_p2pdma_release(void *data)
{
 struct pci_dev *pdev = data;
 struct pci_p2pdma *p2pdma = pdev->p2pdma;

 if (!p2pdma)
  return;


 pdev->p2pdma = ((void*)0);
 synchronize_rcu();

 gen_pool_destroy(p2pdma->pool);
 sysfs_remove_group(&pdev->dev.kobj, &p2pmem_group);
 xa_destroy(&p2pdma->map_types);
}
