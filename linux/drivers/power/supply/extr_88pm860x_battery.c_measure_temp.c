
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {scalar_t__ temp_type; int dev; } ;


 int GPBIAS2_GPADC1_UA ;
 int PM8607_GPADC1_MEAS1 ;
 int PM8607_TINT_MEAS1 ;
 scalar_t__ PM860X_TEMP_TINT ;
 int TBAT_0D ;
 int TBAT_10D ;
 int TBAT_20D ;
 int TBAT_30D ;
 int TBAT_40D ;
 int TBAT_NEG_10D ;
 int TBAT_NEG_25D ;
 int dev_dbg (int ,char*,int,int) ;
 int measure_12bit_voltage (struct pm860x_battery_info*,int ,int*) ;
 int set_temp_threshold (struct pm860x_battery_info*,int,int) ;

__attribute__((used)) static int measure_temp(struct pm860x_battery_info *info, int *data)
{
 int ret;
 int temp;
 int min;
 int max;

 if (info->temp_type == PM860X_TEMP_TINT) {
  ret = measure_12bit_voltage(info, PM8607_TINT_MEAS1, data);
  if (ret)
   return ret;
  *data = (*data - 884) * 1000 / 3611;
 } else {
  ret = measure_12bit_voltage(info, PM8607_GPADC1_MEAS1, data);
  if (ret)
   return ret;

  *data = (*data * 1000) / GPBIAS2_GPADC1_UA;

  if (*data > TBAT_NEG_25D) {
   temp = -30;
   max = TBAT_NEG_10D * GPBIAS2_GPADC1_UA / 1000;
   set_temp_threshold(info, 0, max);
  } else if (*data > TBAT_NEG_10D) {
   temp = -15;
   max = TBAT_NEG_10D * GPBIAS2_GPADC1_UA / 1000;
   set_temp_threshold(info, 0, max);
  } else if (*data > TBAT_0D) {
   temp = -5;
   min = TBAT_NEG_10D * GPBIAS2_GPADC1_UA / 1000;
   max = TBAT_40D * GPBIAS2_GPADC1_UA / 1000;
   set_temp_threshold(info, min, max);
  } else if (*data > TBAT_10D) {
   temp = 5;
   min = TBAT_NEG_10D * GPBIAS2_GPADC1_UA / 1000;
   max = TBAT_40D * GPBIAS2_GPADC1_UA / 1000;
   set_temp_threshold(info, min, max);
  } else if (*data > TBAT_20D) {
   temp = 15;
   min = TBAT_NEG_10D * GPBIAS2_GPADC1_UA / 1000;
   max = TBAT_40D * GPBIAS2_GPADC1_UA / 1000;
   set_temp_threshold(info, min, max);
  } else if (*data > TBAT_30D) {
   temp = 25;
   min = TBAT_NEG_10D * GPBIAS2_GPADC1_UA / 1000;
   max = TBAT_40D * GPBIAS2_GPADC1_UA / 1000;
   set_temp_threshold(info, min, max);
  } else if (*data > TBAT_40D) {
   temp = 35;
   min = TBAT_NEG_10D * GPBIAS2_GPADC1_UA / 1000;
   max = TBAT_40D * GPBIAS2_GPADC1_UA / 1000;
   set_temp_threshold(info, min, max);
  } else {
   min = TBAT_40D * GPBIAS2_GPADC1_UA / 1000;
   set_temp_threshold(info, min, 0);
   temp = 45;
  }

  dev_dbg(info->dev, "temp_C:%d C,temp_mv:%d mv\n", temp, *data);
  *data = temp;
 }
 return 0;
}
