
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_ep {int dummy; } ;


 int UDC_EPCTL_ADDR ;
 int UDC_EPCTL_F ;
 int pch_udc_ep_bit_set (struct pch_udc_ep*,int ,int ) ;

__attribute__((used)) static void pch_udc_ep_fifo_flush(struct pch_udc_ep *ep, int dir)
{
 if (dir) {
  pch_udc_ep_bit_set(ep, UDC_EPCTL_ADDR, UDC_EPCTL_F);
  return;
 }
}
