
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int spear310_p2o(int pin)
{
 int offset = pin;

 if (pin <= 27)
  offset += 4;
 else if (pin <= 33)
  offset = -1;
 else if (pin <= 97)
  offset -= 2;
 else if (pin <= 101)
  offset = 101 - pin;
 else
  offset = -1;

 return offset;
}
