
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ti_bandgap {TYPE_2__* conf; } ;
struct temp_sensor_registers {int bgap_dtemp_mask; int ctrl_dtemp_1; int temp_sensor_ctrl; } ;
struct TYPE_4__ {TYPE_1__* sensors; } ;
struct TYPE_3__ {struct temp_sensor_registers* registers; } ;


 int ERRATA_814 ;
 int FREEZE_BIT ;
 int RMW_BITS (struct ti_bandgap*,int,int ,int ,int) ;
 scalar_t__ TI_BANDGAP_HAS (struct ti_bandgap*,int ) ;
 int bgap_mask_ctrl ;
 int mask_freeze_mask ;
 int ti_bandgap_readl (struct ti_bandgap*,int ) ;
 int ti_errata814_bandgap_read_temp (struct ti_bandgap*,int ) ;

__attribute__((used)) static u32 ti_bandgap_read_temp(struct ti_bandgap *bgp, int id)
{
 struct temp_sensor_registers *tsr;
 u32 temp, reg;

 tsr = bgp->conf->sensors[id].registers;
 reg = tsr->temp_sensor_ctrl;

 if (TI_BANDGAP_HAS(bgp, FREEZE_BIT)) {
  RMW_BITS(bgp, id, bgap_mask_ctrl, mask_freeze_mask, 1);




  reg = tsr->ctrl_dtemp_1;
 }


 if (TI_BANDGAP_HAS(bgp, ERRATA_814))
  temp = ti_errata814_bandgap_read_temp(bgp, reg);
 else
  temp = ti_bandgap_readl(bgp, reg);

 temp &= tsr->bgap_dtemp_mask;

 if (TI_BANDGAP_HAS(bgp, FREEZE_BIT))
  RMW_BITS(bgp, id, bgap_mask_ctrl, mask_freeze_mask, 0);

 return temp;
}
