
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_link_state {int clkpm_default; } ;






 int aspm_policy ;

__attribute__((used)) static int policy_to_clkpm_state(struct pcie_link_state *link)
{
 switch (aspm_policy) {
 case 130:

  return 0;
 case 129:
 case 128:

  return 1;
 case 131:
  return link->clkpm_default;
 }
 return 0;
}
