
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2760_device_info {scalar_t__ update_time; int* raw; int voltage_raw; int voltage_uV; char current_raw; int current_uA; char accum_current_raw; int accum_current_uAh; char temp_raw; int temp_C; int rated_capacity; int full_active_uAh; int empty_uAh; long rem_capacity; long life_sec; int dev; } ;


 int ARRAY_SIZE (int*) ;
 int DS2760_ACTIVE_EMPTY ;
 size_t DS2760_ACTIVE_FULL ;
 size_t DS2760_CURRENT_ACCUM_LSB ;
 size_t DS2760_CURRENT_ACCUM_MSB ;
 size_t DS2760_CURRENT_LSB ;
 size_t DS2760_CURRENT_MSB ;
 int DS2760_DATA_SIZE ;
 size_t DS2760_RATED_CAPACITY ;
 int DS2760_TEMP_LSB ;
 size_t DS2760_TEMP_MSB ;
 size_t DS2760_VOLTAGE_LSB ;
 size_t DS2760_VOLTAGE_MSB ;
 void* battery_interpolate (int*,int) ;
 int cache_time ;
 int dev_warn (int ,char*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int* rated_capacities ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;
 int w1_ds2760_read (int ,int*,int,int) ;

__attribute__((used)) static int ds2760_battery_read_status(struct ds2760_device_info *di)
{
 int ret, i, start, count, scale[5];

 if (di->update_time && time_before(jiffies, di->update_time +
        msecs_to_jiffies(cache_time)))
  return 0;



 if (di->update_time == 0) {
  start = 0;
  count = DS2760_DATA_SIZE;
 } else {
  start = DS2760_VOLTAGE_MSB;
  count = DS2760_TEMP_LSB - start + 1;
 }

 ret = w1_ds2760_read(di->dev, di->raw + start, start, count);
 if (ret != count) {
  dev_warn(di->dev, "call to w1_ds2760_read failed (0x%p)\n",
    di->dev);
  return 1;
 }

 di->update_time = jiffies;



 di->voltage_raw = (di->raw[DS2760_VOLTAGE_MSB] << 3) |
     (di->raw[DS2760_VOLTAGE_LSB] >> 5);
 di->voltage_uV = di->voltage_raw * 4880;



 di->current_raw =
     (((signed char)di->raw[DS2760_CURRENT_MSB]) << 5) |
     (di->raw[DS2760_CURRENT_LSB] >> 3);
 di->current_uA = di->current_raw * 625;


 di->accum_current_raw =
     (((signed char)di->raw[DS2760_CURRENT_ACCUM_MSB]) << 8) |
      di->raw[DS2760_CURRENT_ACCUM_LSB];
 di->accum_current_uAh = di->accum_current_raw * 250;




 di->temp_raw = (((signed char)di->raw[DS2760_TEMP_MSB]) << 3) |
         (di->raw[DS2760_TEMP_LSB] >> 5);
 di->temp_C = di->temp_raw + (di->temp_raw / 4);



 if (di->raw[DS2760_RATED_CAPACITY] < ARRAY_SIZE(rated_capacities))
  di->rated_capacity = rated_capacities[
   (unsigned int)di->raw[DS2760_RATED_CAPACITY]];
 else
  di->rated_capacity = di->raw[DS2760_RATED_CAPACITY] * 10;

 di->rated_capacity *= 1000;


 di->full_active_uAh = di->raw[DS2760_ACTIVE_FULL] << 8 |
         di->raw[DS2760_ACTIVE_FULL + 1];




 if (di->full_active_uAh == 0)
  di->full_active_uAh = di->rated_capacity / 1000L;

 scale[0] = di->full_active_uAh;
 for (i = 1; i < 5; i++)
  scale[i] = scale[i - 1] + di->raw[DS2760_ACTIVE_FULL + 1 + i];

 di->full_active_uAh = battery_interpolate(scale, di->temp_C / 10);
 di->full_active_uAh *= 1000;


 scale[4] = di->raw[DS2760_ACTIVE_EMPTY + 4];
 for (i = 3; i >= 0; i--)
  scale[i] = scale[i + 1] + di->raw[DS2760_ACTIVE_EMPTY + i];

 di->empty_uAh = battery_interpolate(scale, di->temp_C / 10);
 di->empty_uAh *= 1000;

 if (di->full_active_uAh == di->empty_uAh)
  di->rem_capacity = 0;
 else


  di->rem_capacity = ((di->accum_current_uAh - di->empty_uAh) * 100L) /
        (di->full_active_uAh - di->empty_uAh);

 if (di->rem_capacity < 0)
  di->rem_capacity = 0;
 if (di->rem_capacity > 100)
  di->rem_capacity = 100;

 if (di->current_uA < -100L)
  di->life_sec = -((di->accum_current_uAh - di->empty_uAh) * 36L)
     / (di->current_uA / 100L);
 else
  di->life_sec = 0;

 return 0;
}
