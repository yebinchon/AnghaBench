
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;


 int BUG () ;

__attribute__((used)) static s32 pixinc(int pixels, u8 ps)
{
 if (pixels == 1)
  return 1;
 else if (pixels > 1)
  return 1 + (pixels - 1) * ps;
 else if (pixels < 0)
  return 1 - (-pixels + 1) * ps;
 else
  BUG();
 return 0;
}
