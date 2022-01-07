
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
{ return -EINVAL; }
