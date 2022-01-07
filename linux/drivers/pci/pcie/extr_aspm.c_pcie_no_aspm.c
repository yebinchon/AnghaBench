
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POLICY_DEFAULT ;
 int aspm_disabled ;
 int aspm_force ;
 int aspm_policy ;

void pcie_no_aspm(void)
{






 if (!aspm_force) {
  aspm_policy = POLICY_DEFAULT;
  aspm_disabled = 1;
 }
}
