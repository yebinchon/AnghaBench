
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int BUILD_BUG_ON (int) ;
 int SC16IS7XX_MAX_DEVS ;
 int sc16is7xx_lines ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static int sc16is7xx_alloc_line(void)
{
 int i;

 BUILD_BUG_ON(SC16IS7XX_MAX_DEVS > BITS_PER_LONG);

 for (i = 0; i < SC16IS7XX_MAX_DEVS; i++)
  if (!test_and_set_bit(i, &sc16is7xx_lines))
   break;

 return i;
}
