
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ism_dev {int smcd; struct pci_dev* pdev; } ;


 int PCI_IRQ_MSI ;
 int free_irq (int ,struct ism_dev*) ;
 int ism_handle_irq ;
 int ism_read_local_gid (struct ism_dev*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int pci_name (struct pci_dev*) ;
 int query_info (struct ism_dev*) ;
 int register_ieq (struct ism_dev*) ;
 int register_sba (struct ism_dev*) ;
 int request_irq (int ,int ,int ,int ,struct ism_dev*) ;
 int smcd_register_dev (int ) ;
 int unregister_ieq (struct ism_dev*) ;
 int unregister_sba (struct ism_dev*) ;

__attribute__((used)) static int ism_dev_init(struct ism_dev *ism)
{
 struct pci_dev *pdev = ism->pdev;
 int ret;

 ret = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_MSI);
 if (ret <= 0)
  goto out;

 ret = request_irq(pci_irq_vector(pdev, 0), ism_handle_irq, 0,
     pci_name(pdev), ism);
 if (ret)
  goto free_vectors;

 ret = register_sba(ism);
 if (ret)
  goto free_irq;

 ret = register_ieq(ism);
 if (ret)
  goto unreg_sba;

 ret = ism_read_local_gid(ism);
 if (ret)
  goto unreg_ieq;

 ret = smcd_register_dev(ism->smcd);
 if (ret)
  goto unreg_ieq;

 query_info(ism);
 return 0;

unreg_ieq:
 unregister_ieq(ism);
unreg_sba:
 unregister_sba(ism);
free_irq:
 free_irq(pci_irq_vector(pdev, 0), ism);
free_vectors:
 pci_free_irq_vectors(pdev);
out:
 return ret;
}
