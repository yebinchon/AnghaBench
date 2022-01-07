
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWM_ENABLE_ADDR ;
 unsigned char PWM_ENABLE_DATA ;
 int ec_transaction (int ,unsigned char*,int,int *,int ) ;

__attribute__((used)) static void pwm_enable_control(void)
{
 unsigned char writeData = PWM_ENABLE_DATA;
 ec_transaction(PWM_ENABLE_ADDR, &writeData, 1, ((void*)0), 0);
}
