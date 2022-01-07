
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEEPC_EC_FAN_PWM ;
 int ec_write (int ,int) ;
 int eeepc_lmsensors_to_pwm (int) ;

__attribute__((used)) static void eeepc_set_fan_pwm(int value)
{
 value = eeepc_lmsensors_to_pwm(value);
 ec_write(EEEPC_EC_FAN_PWM, value);
}
