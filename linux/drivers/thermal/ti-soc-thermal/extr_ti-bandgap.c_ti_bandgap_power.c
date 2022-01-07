
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_bandgap {TYPE_1__* conf; } ;
struct TYPE_2__ {int sensor_count; } ;


 int ENOTSUPP ;
 int POWER_SWITCH ;
 int RMW_BITS (struct ti_bandgap*,int,int ,int ,int) ;
 int TI_BANDGAP_HAS (struct ti_bandgap*,int ) ;
 int bgap_tempsoff_mask ;
 int temp_sensor_ctrl ;

__attribute__((used)) static int ti_bandgap_power(struct ti_bandgap *bgp, bool on)
{
 int i;

 if (!TI_BANDGAP_HAS(bgp, POWER_SWITCH))
  return -ENOTSUPP;

 for (i = 0; i < bgp->conf->sensor_count; i++)

  RMW_BITS(bgp, i, temp_sensor_ctrl, bgap_tempsoff_mask, !on);
 return 0;
}
