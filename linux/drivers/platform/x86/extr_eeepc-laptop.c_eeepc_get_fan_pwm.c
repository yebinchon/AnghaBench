
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EEEPC_EC_FAN_PWM ;
 int ec_read (int ,int *) ;
 int eeepc_pwm_to_lmsensors (int ) ;

__attribute__((used)) static int eeepc_get_fan_pwm(void)
{
 u8 value = 0;

 ec_read(EEEPC_EC_FAN_PWM, &value);
 return eeepc_pwm_to_lmsensors(value);
}
