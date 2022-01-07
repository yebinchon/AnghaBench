
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;
typedef int s32 ;


 int div64_s64 (int,int) ;

__attribute__((used)) static s64 div64_s64_precise(s64 a, s32 b)
{
 s64 r, al;


 al = a << 16;

 r = div64_s64(al * 2 + 1, 2 * b);
 return r >> 16;
}
