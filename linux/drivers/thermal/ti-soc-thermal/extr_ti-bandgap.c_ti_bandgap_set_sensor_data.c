
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_bandgap {TYPE_1__* regval; } ;
struct TYPE_2__ {void* data; } ;


 int ti_bandgap_validate (struct ti_bandgap*,int) ;

int ti_bandgap_set_sensor_data(struct ti_bandgap *bgp, int id, void *data)
{
 int ret = ti_bandgap_validate(bgp, id);
 if (ret)
  return ret;

 bgp->regval[id].data = data;

 return 0;
}
