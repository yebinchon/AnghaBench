
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t qlge_msix_rx_isr(int irq, void *dev_id)
{
 struct rx_ring *rx_ring = dev_id;
 napi_schedule(&rx_ring->napi);
 return IRQ_HANDLED;
}
