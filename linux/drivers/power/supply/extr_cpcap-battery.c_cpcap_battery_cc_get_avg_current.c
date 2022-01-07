
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_battery_ddata {scalar_t__ vendor; int reg; } ;
typedef int s32 ;
typedef int s16 ;


 int CPCAP_REG_CCI ;
 int CPCAP_REG_CCM ;
 scalar_t__ CPCAP_VENDOR_ST ;
 scalar_t__ CPCAP_VENDOR_TI ;
 int cpcap_battery_cc_to_ua (struct cpcap_battery_ddata*,int,int,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int cpcap_battery_cc_get_avg_current(struct cpcap_battery_ddata *ddata)
{
 int value, acc, error;
 s32 sample = 1;
 s16 offset;

 if (ddata->vendor == CPCAP_VENDOR_ST)
  sample = 4;


 error = regmap_read(ddata->reg, CPCAP_REG_CCI, &value);
 if (error)
  return error;

 if ((ddata->vendor == CPCAP_VENDOR_TI) && (value > 0x2000))
  value = value | 0xc000;

 acc = (s16)value;


 error = regmap_read(ddata->reg, CPCAP_REG_CCM, &value);
 if (error)
  return error;

 if (value < 0x200)
  offset = value;
 else
  offset = value | 0xfc00;

 return cpcap_battery_cc_to_ua(ddata, sample, acc, offset);
}
