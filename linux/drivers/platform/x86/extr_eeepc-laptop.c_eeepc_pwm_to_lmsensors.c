
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int eeepc_pwm_to_lmsensors(int value)
{
 return value * 255 / 100;
}
