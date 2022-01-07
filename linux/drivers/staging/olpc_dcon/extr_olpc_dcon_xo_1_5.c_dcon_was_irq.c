
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT_GPIO12 ;
 int VX855_GPI_STATUS_CHG ;
 int inb (int ) ;

__attribute__((used)) static int dcon_was_irq(void)
{
 u8 tmp;


 tmp = inb(VX855_GPI_STATUS_CHG);

 return !!(tmp & BIT_GPIO12);
}
