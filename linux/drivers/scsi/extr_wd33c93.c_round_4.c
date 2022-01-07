
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int
round_4(unsigned int x)
{
 switch (x & 3) {
  case 1: --x;
   break;
  case 2: ++x;

  case 3: ++x;
 }
 return x;
}
