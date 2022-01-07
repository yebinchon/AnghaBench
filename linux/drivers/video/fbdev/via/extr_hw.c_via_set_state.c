
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int VIA_CRT ;
 int VIA_DVP0 ;
 int VIA_DVP1 ;
 int VIA_LVDS1 ;
 int VIA_LVDS2 ;
 int set_crt_state (int ) ;
 int set_dvp0_state (int ) ;
 int set_dvp1_state (int ) ;
 int set_lvds1_state (int ) ;
 int set_lvds2_state (int ) ;

void via_set_state(u32 devices, u8 state)
{





 if (devices & VIA_DVP0)
  set_dvp0_state(state);
 if (devices & VIA_CRT)
  set_crt_state(state);
 if (devices & VIA_DVP1)
  set_dvp1_state(state);
 if (devices & VIA_LVDS1)
  set_lvds1_state(state);
 if (devices & VIA_LVDS2)
  set_lvds2_state(state);
}
