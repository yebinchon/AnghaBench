
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DATA (unsigned int) ;
 int DF ;
 int STATUS (unsigned int) ;
 int inb (int ) ;
 int wait_mask (int ,int ,int ,int ,int) ;

__attribute__((used)) static int aha1542_in(unsigned int base, u8 *buf, int len, int timeout)
{
 while (len--) {
  if (!wait_mask(STATUS(base), DF, DF, 0, timeout))
   return 1;
  *buf++ = inb(DATA(base));
 }
 return 0;
}
