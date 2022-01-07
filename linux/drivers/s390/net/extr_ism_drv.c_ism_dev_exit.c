
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ism_dev {int smcd; struct pci_dev* pdev; } ;


 int free_irq (int ,struct ism_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int smcd_unregister_dev (int ) ;
 int unregister_ieq (struct ism_dev*) ;
 int unregister_sba (struct ism_dev*) ;

__attribute__((used)) static void ism_dev_exit(struct ism_dev *ism)
{
 struct pci_dev *pdev = ism->pdev;

 smcd_unregister_dev(ism->smcd);
 unregister_ieq(ism);
 unregister_sba(ism);
 free_irq(pci_irq_vector(pdev, 0), ism);
 pci_free_irq_vectors(pdev);
}
