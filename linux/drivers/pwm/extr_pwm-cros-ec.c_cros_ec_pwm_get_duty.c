
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cros_ec_device {int dummy; } ;


 int __cros_ec_pwm_get_duty (struct cros_ec_device*,int ,int *) ;

__attribute__((used)) static int cros_ec_pwm_get_duty(struct cros_ec_device *ec, u8 index)
{
 return __cros_ec_pwm_get_duty(ec, index, ((void*)0));
}
