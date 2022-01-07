
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CDF ;
 int DATA (unsigned int) ;
 int STATUS (unsigned int) ;
 int outb (int ,int ) ;
 int wait_mask (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int aha1542_outb(unsigned int base, u8 val)
{
 if (!wait_mask(STATUS(base), CDF, 0, CDF, 0))
  return 1;
 outb(val, DATA(base));

 return 0;
}
