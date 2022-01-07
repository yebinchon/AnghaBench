
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int inb (int ) ;
 int mdelay (int) ;

__attribute__((used)) static inline bool wait_mask(u16 port, u8 mask, u8 allof, u8 noneof, int timeout)
{
 bool delayed = 1;

 if (timeout == 0) {
  timeout = 3000000;
  delayed = 0;
 }

 while (1) {
  u8 bits = inb(port) & mask;
  if ((bits & allof) == allof && ((bits & noneof) == 0))
   break;
  if (delayed)
   mdelay(1);
  if (--timeout == 0)
   return 0;
 }

 return 1;
}
