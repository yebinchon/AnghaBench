
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_link_state {int clkpm_enabled; int clkpm_capable; } ;


 int pcie_set_clkpm_nocheck (struct pcie_link_state*,int) ;

__attribute__((used)) static void pcie_set_clkpm(struct pcie_link_state *link, int enable)
{

 if (!link->clkpm_capable)
  enable = 0;

 if (link->clkpm_enabled == enable)
  return;
 pcie_set_clkpm_nocheck(link, enable);
}
