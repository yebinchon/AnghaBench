
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm63xx_udc {int dummy; } ;


 int BCM63XX_NUM_FIFO_PAIRS ;
 int bcm63xx_fifo_reset_ep (struct bcm63xx_udc*,int) ;

__attribute__((used)) static void bcm63xx_fifo_reset(struct bcm63xx_udc *udc)
{
 int i;

 for (i = 0; i < BCM63XX_NUM_FIFO_PAIRS; i++)
  bcm63xx_fifo_reset_ep(udc, i);
}
