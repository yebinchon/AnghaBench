
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int smbb_vin_fn(unsigned int index)
{
 if (index > 42)
  return 5600000 + (index - 43) * 200000;
 return 3400000 + index * 50000;
}
