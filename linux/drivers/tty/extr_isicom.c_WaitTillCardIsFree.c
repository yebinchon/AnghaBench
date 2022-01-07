
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inw (unsigned long) ;
 int mdelay (int) ;

__attribute__((used)) static int WaitTillCardIsFree(unsigned long base)
{
 unsigned int count = 0;

 while (!(inw(base + 0xe) & 0x1) && count++ < 100)
  mdelay(1);

 return !(inw(base + 0xe) & 0x1);
}
