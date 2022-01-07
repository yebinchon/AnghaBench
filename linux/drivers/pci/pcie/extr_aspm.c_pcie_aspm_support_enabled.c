
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aspm_support_enabled ;

bool pcie_aspm_support_enabled(void)
{
 return aspm_support_enabled;
}
