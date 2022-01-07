
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intelfb_info {scalar_t__ ring_active; int accel; } ;


 int DBG_MSG (char*,int ,scalar_t__) ;
 int reset_state (struct intelfb_info*) ;

void intelfbhw_2d_stop(struct intelfb_info *dinfo)
{





 if (!dinfo->accel)
  return;

 dinfo->ring_active = 0;
 reset_state(dinfo);
}
