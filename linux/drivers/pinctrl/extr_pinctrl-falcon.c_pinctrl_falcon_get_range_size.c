
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * membase; } ;


 int EINVAL ;
 int LTQ_PADC_AVAIL ;
 int PORTS ;
 TYPE_1__ falcon_info ;
 int fls (int ) ;
 int pad_r32 (int ,int ) ;

int pinctrl_falcon_get_range_size(int id)
{
 u32 avail;

 if ((id >= PORTS) || (!falcon_info.membase[id]))
  return -EINVAL;

 avail = pad_r32(falcon_info.membase[id], LTQ_PADC_AVAIL);

 return fls(avail);
}
