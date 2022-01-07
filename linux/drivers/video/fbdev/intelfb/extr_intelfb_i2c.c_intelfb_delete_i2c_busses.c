
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intelfb_info {TYPE_3__* output; } ;
struct TYPE_5__ {int * dinfo; int adapter; } ;
struct TYPE_4__ {int * dinfo; int adapter; } ;
struct TYPE_6__ {TYPE_2__ ddc_bus; TYPE_1__ i2c_bus; } ;


 int MAX_OUTPUTS ;
 int i2c_del_adapter (int *) ;

void intelfb_delete_i2c_busses(struct intelfb_info *dinfo)
{
 int i;

 for (i = 0; i < MAX_OUTPUTS; i++) {
  if (dinfo->output[i].i2c_bus.dinfo) {
   i2c_del_adapter(&dinfo->output[i].i2c_bus.adapter);
   dinfo->output[i].i2c_bus.dinfo = ((void*)0);
  }
  if (dinfo->output[i].ddc_bus.dinfo) {
   i2c_del_adapter(&dinfo->output[i].ddc_bus.adapter);
   dinfo->output[i].ddc_bus.dinfo = ((void*)0);
  }
 }
}
