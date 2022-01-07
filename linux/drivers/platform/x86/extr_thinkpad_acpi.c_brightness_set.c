
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENXIO ;



 int TPACPI_DBG_BRGHT ;
 unsigned int bright_maxlvl ;
 int brightness_mode ;
 int brightness_mutex ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int tpacpi_brightness_set_ec (unsigned int) ;
 int tpacpi_brightness_set_ucmsstep (unsigned int) ;
 int vdbg_printk (int ,char*,unsigned int) ;

__attribute__((used)) static int brightness_set(unsigned int value)
{
 int res;

 if (value > bright_maxlvl)
  return -EINVAL;

 vdbg_printk(TPACPI_DBG_BRGHT,
   "set backlight level to %d\n", value);

 res = mutex_lock_killable(&brightness_mutex);
 if (res < 0)
  return res;

 switch (brightness_mode) {
 case 130:
 case 129:
  res = tpacpi_brightness_set_ec(value);
  break;
 case 128:
  res = tpacpi_brightness_set_ucmsstep(value);
  break;
 default:
  res = -ENXIO;
 }

 mutex_unlock(&brightness_mutex);
 return res;
}
