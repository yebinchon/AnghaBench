
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int cd_factor; } ;
struct cpcap_battery_ddata {int vendor; TYPE_1__ config; } ;
typedef int s64 ;
typedef int s32 ;
typedef int s16 ;




 int EINVAL ;
 int do_div (int,int) ;

__attribute__((used)) static int cpcap_battery_cc_raw_div(struct cpcap_battery_ddata *ddata,
        s32 sample, s32 accumulator,
        s16 offset, u32 divider)
{
 s64 acc;
 u64 tmp;
 int avg_current;
 u32 cc_lsb;

 if (!divider)
  return 0;

 switch (ddata->vendor) {
 case 129:
  cc_lsb = 95374;
  break;
 case 128:
  cc_lsb = 91501;
  break;
 default:
  return -EINVAL;
 }

 acc = accumulator;
 acc = acc - ((s64)sample * offset);
 cc_lsb = (cc_lsb * ddata->config.cd_factor) / 1000;

 if (acc >= 0)
  tmp = acc;
 else
  tmp = acc * -1;

 tmp = tmp * cc_lsb;
 do_div(tmp, divider);
 avg_current = tmp;

 if (acc >= 0)
  return -avg_current;
 else
  return avg_current;
}
