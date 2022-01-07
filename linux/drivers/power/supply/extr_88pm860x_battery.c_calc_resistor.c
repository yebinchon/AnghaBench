
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int resistor; } ;


 int EINVAL ;
 int OCV_MODE_ACTIVE ;
 int VBATT_RESISTOR_MAX ;
 int VBATT_RESISTOR_MIN ;
 int measure_current (struct pm860x_battery_info*,int*) ;
 int measure_vbatt (struct pm860x_battery_info*,int ,int*) ;
 int msleep (int) ;
 scalar_t__ set_charger_current (struct pm860x_battery_info*,int,int*) ;

__attribute__((used)) static int calc_resistor(struct pm860x_battery_info *info)
{
 int vbatt_sum1;
 int vbatt_sum2;
 int chg_current;
 int ibatt_sum1;
 int ibatt_sum2;
 int data;
 int ret;
 int i;

 ret = measure_current(info, &data);

 if (ret || data < 0)
  goto out;

 ret = measure_vbatt(info, OCV_MODE_ACTIVE, &data);
 if (ret)
  goto out;

 if (data < VBATT_RESISTOR_MIN || data > VBATT_RESISTOR_MAX)
  goto out;


 if (set_charger_current(info, 500, &chg_current))
  goto out;





 msleep(500);

 for (i = 0, vbatt_sum1 = 0, ibatt_sum1 = 0; i < 10; i++) {
  ret = measure_vbatt(info, OCV_MODE_ACTIVE, &data);
  if (ret)
   goto out_meas;
  vbatt_sum1 += data;
  ret = measure_current(info, &data);
  if (ret)
   goto out_meas;

  if (data < 0)
   ibatt_sum1 = ibatt_sum1 - data;
  else
   ibatt_sum1 = ibatt_sum1 + data;
 }

 if (set_charger_current(info, 100, &ret))
  goto out_meas;




 msleep(500);

 for (i = 0, vbatt_sum2 = 0, ibatt_sum2 = 0; i < 10; i++) {
  ret = measure_vbatt(info, OCV_MODE_ACTIVE, &data);
  if (ret)
   goto out_meas;
  vbatt_sum2 += data;
  ret = measure_current(info, &data);
  if (ret)
   goto out_meas;

  if (data < 0)
   ibatt_sum2 = ibatt_sum2 - data;
  else
   ibatt_sum2 = ibatt_sum2 + data;
 }


 if (set_charger_current(info, chg_current, &ret))
  goto out_meas;

 if ((vbatt_sum1 > vbatt_sum2) && (ibatt_sum1 > ibatt_sum2) &&
   (ibatt_sum2 > 0)) {

  data = 1000 * (vbatt_sum1 - vbatt_sum2)
      / (ibatt_sum1 - ibatt_sum2);
  if ((data - info->resistor > 0) &&
    (data - info->resistor < info->resistor))
   info->resistor = data;
  if ((info->resistor - data > 0) &&
    (info->resistor - data < data))
   info->resistor = data;
 }
 return 0;

out_meas:
 set_charger_current(info, chg_current, &ret);
out:
 return -EINVAL;
}
