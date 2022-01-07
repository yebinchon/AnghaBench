
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int resistor; int dev; int lock; scalar_t__ present; } ;


 int EINVAL ;
 int OCV_MODE_ACTIVE ;
 int dev_dbg (int ,char*,int,int) ;
 int measure_current (struct pm860x_battery_info*,int*) ;
 int measure_vbatt (struct pm860x_battery_info*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int calc_ocv(struct pm860x_battery_info *info, int *ocv)
{
 int ret;
 int i;
 int data;
 int vbatt_avg;
 int vbatt_sum;
 int ibatt_avg;
 int ibatt_sum;

 if (!ocv)
  return -EINVAL;

 for (i = 0, ibatt_sum = 0, vbatt_sum = 0; i < 10; i++) {
  ret = measure_vbatt(info, OCV_MODE_ACTIVE, &data);
  if (ret)
   goto out;
  vbatt_sum += data;
  ret = measure_current(info, &data);
  if (ret)
   goto out;
  ibatt_sum += data;
 }
 vbatt_avg = vbatt_sum / 10;
 ibatt_avg = ibatt_sum / 10;

 mutex_lock(&info->lock);
 if (info->present)
  *ocv = vbatt_avg - ibatt_avg * info->resistor / 1000;
 else
  *ocv = vbatt_avg;
 mutex_unlock(&info->lock);
 dev_dbg(info->dev, "VBAT average:%d, OCV:%d\n", vbatt_avg, *ocv);
 return 0;
out:
 return ret;
}
