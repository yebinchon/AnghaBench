
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {void* chip_data; } ;


 int EINVAL ;

int pwm_set_chip_data(struct pwm_device *pwm, void *data)
{
 if (!pwm)
  return -EINVAL;

 pwm->chip_data = data;

 return 0;
}
