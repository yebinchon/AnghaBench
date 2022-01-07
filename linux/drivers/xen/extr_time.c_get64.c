
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int BITS_PER_LONG ;
 scalar_t__ READ_ONCE (int const) ;

__attribute__((used)) static u64 get64(const u64 *p)
{
 u64 ret;

 if (BITS_PER_LONG < 64) {
  u32 *p32 = (u32 *)p;
  u32 h, l, h2;







  do {
   h = READ_ONCE(p32[1]);
   l = READ_ONCE(p32[0]);
   h2 = READ_ONCE(p32[1]);
  } while(h2 != h);

  ret = (((u64)h) << 32) | l;
 } else
  ret = READ_ONCE(*p);

 return ret;
}
