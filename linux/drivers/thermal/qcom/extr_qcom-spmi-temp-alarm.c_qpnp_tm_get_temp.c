
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qpnp_tm_chip {int temp; int adc; int lock; int initialized; } ;


 int DEFAULT_TEMP ;
 int EINVAL ;
 int iio_read_channel_processed (int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qpnp_tm_update_temp_no_adc (struct qpnp_tm_chip*) ;

__attribute__((used)) static int qpnp_tm_get_temp(void *data, int *temp)
{
 struct qpnp_tm_chip *chip = data;
 int ret, mili_celsius;

 if (!temp)
  return -EINVAL;

 if (!chip->initialized) {
  *temp = DEFAULT_TEMP;
  return 0;
 }

 if (!chip->adc) {
  mutex_lock(&chip->lock);
  ret = qpnp_tm_update_temp_no_adc(chip);
  mutex_unlock(&chip->lock);
  if (ret < 0)
   return ret;
 } else {
  ret = iio_read_channel_processed(chip->adc, &mili_celsius);
  if (ret < 0)
   return ret;

  chip->temp = mili_celsius;
 }

 *temp = chip->temp < 0 ? 0 : chip->temp;

 return 0;
}
