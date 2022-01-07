
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CDF ;
 int DATA (unsigned int) ;
 int HACC ;
 int INTRFLAGS (unsigned int) ;
 int INTRMASK ;
 int STATUS (unsigned int) ;
 int outb (int ,int ) ;
 int wait_mask (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int aha1542_out(unsigned int base, u8 *buf, int len)
{
 while (len--) {
  if (!wait_mask(STATUS(base), CDF, 0, CDF, 0))
   return 1;
  outb(*buf++, DATA(base));
 }
 if (!wait_mask(INTRFLAGS(base), INTRMASK, HACC, 0, 0))
  return 1;

 return 0;
}
