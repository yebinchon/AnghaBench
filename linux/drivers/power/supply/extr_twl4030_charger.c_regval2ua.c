
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int regval2ua(int regval, bool cgain)
{
 if (cgain)
  return (regval * 16618 - 8500 * 1000) / 5;
 else
  return (regval * 16618 - 8500 * 1000) / 10;
}
