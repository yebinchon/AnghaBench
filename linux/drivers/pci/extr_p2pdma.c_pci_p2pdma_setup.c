
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pci_p2pdma {int pool; int map_types; } ;
struct TYPE_5__ {int kobj; } ;
struct pci_dev {TYPE_1__ dev; struct pci_p2pdma* p2pdma; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int dev_to_node (TYPE_1__*) ;
 int devm_add_action_or_reset (TYPE_1__*,int ,struct pci_dev*) ;
 int devm_kfree (TYPE_1__*,struct pci_p2pdma*) ;
 struct pci_p2pdma* devm_kzalloc (TYPE_1__*,int,int ) ;
 int gen_pool_create (int ,int ) ;
 int gen_pool_destroy (int ) ;
 int p2pmem_group ;
 int pci_p2pdma_release ;
 int sysfs_create_group (int *,int *) ;
 int xa_init (int *) ;

__attribute__((used)) static int pci_p2pdma_setup(struct pci_dev *pdev)
{
 int error = -ENOMEM;
 struct pci_p2pdma *p2p;

 p2p = devm_kzalloc(&pdev->dev, sizeof(*p2p), GFP_KERNEL);
 if (!p2p)
  return -ENOMEM;

 xa_init(&p2p->map_types);

 p2p->pool = gen_pool_create(PAGE_SHIFT, dev_to_node(&pdev->dev));
 if (!p2p->pool)
  goto out;

 error = devm_add_action_or_reset(&pdev->dev, pci_p2pdma_release, pdev);
 if (error)
  goto out_pool_destroy;

 pdev->p2pdma = p2p;

 error = sysfs_create_group(&pdev->dev.kobj, &p2pmem_group);
 if (error)
  goto out_pool_destroy;

 return 0;

out_pool_destroy:
 pdev->p2pdma = ((void*)0);
 gen_pool_destroy(p2p->pool);
out:
 devm_kfree(&pdev->dev, p2p);
 return error;
}
