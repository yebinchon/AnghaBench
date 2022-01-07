
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_bandgap {TYPE_1__* regval; } ;
struct TYPE_2__ {void* data; } ;


 void* ERR_PTR (int) ;
 int ti_bandgap_validate (struct ti_bandgap*,int) ;

void *ti_bandgap_get_sensor_data(struct ti_bandgap *bgp, int id)
{
 int ret = ti_bandgap_validate(bgp, id);
 if (ret)
  return ERR_PTR(ret);

 return bgp->regval[id].data;
}
