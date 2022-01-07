
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_bandgap {TYPE_1__* conf; } ;
struct TYPE_2__ {int sensor_count; } ;


 int RMW_BITS (struct ti_bandgap*,int,int ,int ,int) ;
 int bgap_mode_ctrl ;
 int mode_ctrl_mask ;
 int ti_bandgap_force_single_read (struct ti_bandgap*,int) ;

__attribute__((used)) static int ti_bandgap_set_continuous_mode(struct ti_bandgap *bgp)
{
 int i;

 for (i = 0; i < bgp->conf->sensor_count; i++) {

  ti_bandgap_force_single_read(bgp, i);
  RMW_BITS(bgp, i, bgap_mode_ctrl, mode_ctrl_mask, 1);
 }

 return 0;
}
