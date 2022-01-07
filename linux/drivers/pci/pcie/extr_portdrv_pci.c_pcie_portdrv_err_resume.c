
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int resume_iter ;

__attribute__((used)) static void pcie_portdrv_err_resume(struct pci_dev *dev)
{
 device_for_each_child(&dev->dev, ((void*)0), resume_iter);
}
