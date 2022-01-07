
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;

__attribute__((used)) static bool hpx3_cap_ver_matches(u8 pcie_cap_id, u8 hpx3_cap_id)
{
 u8 cap_ver = hpx3_cap_id & 0xf;

 if ((hpx3_cap_id & BIT(4)) && cap_ver >= pcie_cap_id)
  return 1;
 else if (cap_ver == pcie_cap_id)
  return 1;

 return 0;
}
