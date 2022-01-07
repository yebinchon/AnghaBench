
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void mt2701_spec_dir_set(unsigned int *reg_addr, unsigned int pin)
{
 if (pin > 175)
  *reg_addr += 0x10;
}
