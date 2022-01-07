
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ti_bandgap {TYPE_1__* conf; } ;
struct temp_sensor_registers {int bgap_eocz_mask; int temp_sensor_ctrl; } ;
struct TYPE_4__ {struct temp_sensor_registers* registers; } ;
struct TYPE_3__ {TYPE_2__* sensors; } ;


 int MODE_CONFIG ;
 int RMW_BITS (struct ti_bandgap*,int,int ,int ,int) ;
 scalar_t__ TI_BANDGAP_HAS (struct ti_bandgap*,int ) ;
 int bgap_mode_ctrl ;
 int bgap_soc_mask ;
 int mode_ctrl_mask ;
 int temp_sensor_ctrl ;
 int ti_bandgap_readl (struct ti_bandgap*,int ) ;

__attribute__((used)) static int
ti_bandgap_force_single_read(struct ti_bandgap *bgp, int id)
{
 u32 counter = 1000;
 struct temp_sensor_registers *tsr;


 if (TI_BANDGAP_HAS(bgp, MODE_CONFIG))
  RMW_BITS(bgp, id, bgap_mode_ctrl, mode_ctrl_mask, 0);


 RMW_BITS(bgp, id, temp_sensor_ctrl, bgap_soc_mask, 1);


 tsr = bgp->conf->sensors[id].registers;

 while (--counter) {
  if (ti_bandgap_readl(bgp, tsr->temp_sensor_ctrl) &
      tsr->bgap_eocz_mask)
   break;
 }


 RMW_BITS(bgp, id, temp_sensor_ctrl, bgap_soc_mask, 0);


 counter = 1000;
 while (--counter) {
  if (!(ti_bandgap_readl(bgp, tsr->temp_sensor_ctrl) &
        tsr->bgap_eocz_mask))
   break;
 }

 return 0;
}
