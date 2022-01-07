
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_battery_ddata {int dummy; } ;
typedef int s32 ;
typedef int s16 ;


 int CPCAP_BATTERY_CC_SAMPLE_PERIOD_MS ;
 int cpcap_battery_cc_raw_div (struct cpcap_battery_ddata*,int,int,int ,int) ;

__attribute__((used)) static int cpcap_battery_cc_to_ua(struct cpcap_battery_ddata *ddata,
      s32 sample, s32 accumulator,
      s16 offset)
{
 return cpcap_battery_cc_raw_div(ddata, sample,
     accumulator, offset,
     sample *
     CPCAP_BATTERY_CC_SAMPLE_PERIOD_MS);
}
