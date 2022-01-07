
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int volt_reg_to_mV(int value)
{
 return ((value * 1000) / 512) + 2500;
}
