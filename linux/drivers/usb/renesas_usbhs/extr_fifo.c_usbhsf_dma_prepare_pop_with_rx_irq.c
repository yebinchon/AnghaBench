
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pkt {int dummy; } ;


 int usbhsf_prepare_pop (struct usbhs_pkt*,int*) ;

__attribute__((used)) static int usbhsf_dma_prepare_pop_with_rx_irq(struct usbhs_pkt *pkt,
           int *is_done)
{
 return usbhsf_prepare_pop(pkt, is_done);
}
