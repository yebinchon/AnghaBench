
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ error_state; } ;


 scalar_t__ pci_channel_io_perm_failure ;

__attribute__((used)) static inline bool pci_dev_is_disconnected(const struct pci_dev *dev)
{
 return dev->error_state == pci_channel_io_perm_failure;
}
