
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int ENOTTY ;

__attribute__((used)) static inline int pci_dev_specific_acs_enabled(struct pci_dev *dev,
            u16 acs_flags)
{
 return -ENOTTY;
}
