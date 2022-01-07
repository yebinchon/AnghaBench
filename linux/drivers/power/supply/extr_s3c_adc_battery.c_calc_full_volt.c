
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int calc_full_volt(int volt_val, int cur_val, int impedance)
{
 return volt_val + cur_val * impedance / 1000;
}
