
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {void* chip_data; } ;



void *pwm_get_chip_data(struct pwm_device *pwm)
{
 return pwm ? pwm->chip_data : ((void*)0);
}
