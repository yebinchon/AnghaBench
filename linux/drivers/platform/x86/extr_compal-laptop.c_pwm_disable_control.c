
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWM_DISABLE_ADDR ;
 unsigned char PWM_DISABLE_DATA ;
 int ec_transaction (int ,unsigned char*,int,int *,int ) ;

__attribute__((used)) static void pwm_disable_control(void)
{
 unsigned char writeData = PWM_DISABLE_DATA;
 ec_transaction(PWM_DISABLE_ADDR, &writeData, 1, ((void*)0), 0);
}
