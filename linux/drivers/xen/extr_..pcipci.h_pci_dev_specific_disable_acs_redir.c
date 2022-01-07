
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENOTTY ;

__attribute__((used)) static inline int pci_dev_specific_disable_acs_redir(struct pci_dev *dev)
{
 return -ENOTTY;
}
