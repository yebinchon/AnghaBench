
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_IRQ_TIMER1 ;
 int cvm_oct_device ;
 int free_irq (int ,int ) ;

void cvm_oct_tx_shutdown(void)
{

 free_irq(OCTEON_IRQ_TIMER1, cvm_oct_device);
}
