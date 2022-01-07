
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWM_ADDRESS ;
 int ec_transaction (int ,int *,int,int *,int ) ;
 int * pwm_lookup_table ;

__attribute__((used)) static void set_pwm(int pwm)
{
 ec_transaction(PWM_ADDRESS, &pwm_lookup_table[pwm], 1, ((void*)0), 0);
}
