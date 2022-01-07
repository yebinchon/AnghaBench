
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cros_ec_device {int dummy; } ;


 scalar_t__ EC_RES_INVALID_COMMAND ;
 scalar_t__ EC_RES_INVALID_PARAM ;
 int ENODEV ;
 int EPROTO ;
 int U8_MAX ;
 int __cros_ec_pwm_get_duty (struct cros_ec_device*,int,scalar_t__*) ;

__attribute__((used)) static int cros_ec_num_pwms(struct cros_ec_device *ec)
{
 int i, ret;


 for (i = 0; i <= U8_MAX; i++) {
  u32 result = 0;

  ret = __cros_ec_pwm_get_duty(ec, i, &result);

  if (ret < 0 && !(ret == -EPROTO && result))
   return ret;





  if (result == EC_RES_INVALID_COMMAND)
   return -ENODEV;
  else if (result == EC_RES_INVALID_PARAM)
   return i;
  else if (result)
   return -EPROTO;
 }

 return U8_MAX;
}
