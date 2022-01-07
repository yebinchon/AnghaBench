
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int limit_entry; } ;
typedef TYPE_1__ nsp32_target ;
struct TYPE_8__ {TYPE_1__* target; void* resettime; } ;
typedef TYPE_2__ nsp32_hw_data ;


 int NSP32_HOST_SCSIID ;
 int TRUE ;
 scalar_t__ ULTRA20M_MODE ;
 void* nsp32_prom_read (TYPE_2__*,int) ;
 int nsp32_search_period_entry (TYPE_2__*,TYPE_1__*,int) ;
 scalar_t__ trans_mode ;

__attribute__((used)) static int nsp32_getprom_c16(nsp32_hw_data *data)
{
 int ret, i;
 nsp32_target *target;
 int entry, val;






 data->resettime = nsp32_prom_read(data, 0x11);




 for (i = 0; i < NSP32_HOST_SCSIID; i++) {
  target = &data->target[i];
  ret = nsp32_prom_read(data, i);
  switch (ret) {
  case 0:
   val = 0x0c;
   break;
  case 1:
   val = 0x19;
   break;
  case 2:
   val = 0x32;
   break;
  case 3:
   val = 0x00;
   break;
  default:
   val = 0x0c;
   break;
  }
  entry = nsp32_search_period_entry(data, target, val);
  if (entry < 0 || trans_mode == ULTRA20M_MODE) {

   entry = 0;
  }
  target->limit_entry = entry;
 }

 return TRUE;
}
