
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {int dev; } ;


 int free_irq (int ,struct pvscsi_adapter*) ;
 int pci_free_irq_vectors (int ) ;
 int pci_irq_vector (int ,int ) ;

__attribute__((used)) static void pvscsi_shutdown_intr(struct pvscsi_adapter *adapter)
{
 free_irq(pci_irq_vector(adapter->dev, 0), adapter);
 pci_free_irq_vectors(adapter->dev);
}
