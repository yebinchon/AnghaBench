
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int VIA_CRT ;
 int VIA_DVP0 ;
 int VIA_DVP1 ;
 int VIA_LDVP0 ;
 int VIA_LDVP1 ;
 int VIA_LVDS1 ;
 int VIA_LVDS2 ;
 int set_crt_source (int ) ;
 int set_dvp0_source (int ) ;
 int set_dvp1_source (int ) ;
 int set_ldvp0_source (int ) ;
 int set_ldvp1_source (int ) ;
 int set_lvds1_source (int ) ;
 int set_lvds2_source (int ) ;

void via_set_source(u32 devices, u8 iga)
{
 if (devices & VIA_LDVP0)
  set_ldvp0_source(iga);
 if (devices & VIA_LDVP1)
  set_ldvp1_source(iga);
 if (devices & VIA_DVP0)
  set_dvp0_source(iga);
 if (devices & VIA_CRT)
  set_crt_source(iga);
 if (devices & VIA_DVP1)
  set_dvp1_source(iga);
 if (devices & VIA_LVDS1)
  set_lvds1_source(iga);
 if (devices & VIA_LVDS2)
  set_lvds2_source(iga);
}
