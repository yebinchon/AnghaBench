
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {scalar_t__ timers_base; TYPE_2__* memcs; scalar_t__ aon_ctrl_base; } ;
struct TYPE_5__ {scalar_t__ linesz; } ;
struct TYPE_7__ {TYPE_1__ icache; } ;
struct TYPE_6__ {scalar_t__ ddr_phy_base; } ;


 scalar_t__ BMIPS_WARM_RESTART_VEC ;
 scalar_t__ bmips_smp_int_vec ;
 scalar_t__ bmips_smp_int_vec_end ;
 int brcm_pm_do_s2 (scalar_t__*) ;
 TYPE_4__ ctrl ;
 TYPE_3__ current_cpu_data ;

__attribute__((used)) static int brcmstb_pm_s2(void)
{
 u32 s2_params[6];


 s2_params[0] = (u32)ctrl.aon_ctrl_base;
 s2_params[1] = (u32)ctrl.memcs[0].ddr_phy_base;
 s2_params[2] = (u32)ctrl.timers_base;
 s2_params[3] = (u32)current_cpu_data.icache.linesz;
 s2_params[4] = (u32)BMIPS_WARM_RESTART_VEC;
 s2_params[5] = (u32)(bmips_smp_int_vec_end -
  bmips_smp_int_vec);


 brcm_pm_do_s2(s2_params);

 return 0;
}
