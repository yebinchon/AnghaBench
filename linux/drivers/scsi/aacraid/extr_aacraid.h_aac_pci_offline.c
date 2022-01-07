
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {scalar_t__ handle_pci_error; int pdev; } ;


 scalar_t__ pci_channel_offline (int ) ;

__attribute__((used)) static inline int aac_pci_offline(struct aac_dev *dev)
{
 return pci_channel_offline(dev->pdev) || dev->handle_pci_error;
}
