
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int smbb_imax_fn(unsigned int index)
{
 if (index < 2)
  return 100000 + index * 50000;
 return index * 100000;
}
