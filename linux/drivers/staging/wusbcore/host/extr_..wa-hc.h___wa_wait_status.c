
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wahc {int dummy; } ;
typedef int s32 ;


 int ETIMEDOUT ;
 int __wa_get_status (struct wahc*) ;
 int msleep (int) ;

__attribute__((used)) static inline s32 __wa_wait_status(struct wahc *wa, u32 mask, u32 value)
{
 s32 result;
 unsigned loops = 10;
 do {
  msleep(50);
  result = __wa_get_status(wa);
  if ((result & mask) == value)
   break;
  if (loops-- == 0) {
   result = -ETIMEDOUT;
   break;
  }
 } while (result >= 0);
 return result;
}
