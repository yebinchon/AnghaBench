
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clamp_val (int,int ,int) ;

__attribute__((used)) static inline int eeepc_lmsensors_to_pwm(int value)
{
 value = clamp_val(value, 0, 255);
 return value * 100 / 255;
}
