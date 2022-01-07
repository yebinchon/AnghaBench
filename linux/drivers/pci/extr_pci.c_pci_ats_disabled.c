
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pcie_ats_disabled ;

bool pci_ats_disabled(void)
{
 return pcie_ats_disabled;
}
