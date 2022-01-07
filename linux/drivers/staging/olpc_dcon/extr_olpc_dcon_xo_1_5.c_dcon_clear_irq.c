
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_GPIO12 ;
 int VX855_GPI_STATUS_CHG ;
 int outb (int ,int ) ;

__attribute__((used)) static void dcon_clear_irq(void)
{

 outb(BIT_GPIO12, VX855_GPI_STATUS_CHG);
}
