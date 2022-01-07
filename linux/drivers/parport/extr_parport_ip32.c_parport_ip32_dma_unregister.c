
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACEISA_PAR_CTXA_IRQ ;
 int MACEISA_PAR_CTXB_IRQ ;
 int MACEISA_PAR_MERR_IRQ ;
 int free_irq (int ,int *) ;

__attribute__((used)) static void parport_ip32_dma_unregister(void)
{



 free_irq(MACEISA_PAR_CTXB_IRQ, ((void*)0));
 free_irq(MACEISA_PAR_CTXA_IRQ, ((void*)0));
}
