
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int spear310_o2p(int offset)
{
 if (offset <= 3)
  return 101 - offset;
 else if (offset <= 31)
  return offset - 4;
 else
  return offset + 2;
}
