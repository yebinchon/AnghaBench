
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int num_msix_vectors_enabled; int num_msix_vectors_initialized; int * queue_groups; int event_irq; struct pci_dev* pci_dev; } ;
struct pci_dev {int dev; } ;


 int DRIVER_NAME_SHORT ;
 int dev_err (int *,char*,int ,int) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 int pqi_irq_handler ;
 int request_irq (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int pqi_request_irqs(struct pqi_ctrl_info *ctrl_info)
{
 struct pci_dev *pci_dev = ctrl_info->pci_dev;
 int i;
 int rc;

 ctrl_info->event_irq = pci_irq_vector(pci_dev, 0);

 for (i = 0; i < ctrl_info->num_msix_vectors_enabled; i++) {
  rc = request_irq(pci_irq_vector(pci_dev, i), pqi_irq_handler, 0,
   DRIVER_NAME_SHORT, &ctrl_info->queue_groups[i]);
  if (rc) {
   dev_err(&pci_dev->dev,
    "irq %u init failed with error %d\n",
    pci_irq_vector(pci_dev, i), rc);
   return rc;
  }
  ctrl_info->num_msix_vectors_initialized++;
 }

 return 0;
}
