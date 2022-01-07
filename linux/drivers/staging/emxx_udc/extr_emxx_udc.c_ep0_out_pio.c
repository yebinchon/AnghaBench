
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union usb_reg_access {int dw; } ;
typedef int u8 ;
typedef int u32 ;
struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_2__ {int EP0_READ; } ;


 int _nbu2ss_readl (int *) ;

__attribute__((used)) static int ep0_out_pio(struct nbu2ss_udc *udc, u8 *buf, u32 length)
{
 u32 i;
 u32 numreads = length / sizeof(u32);
 union usb_reg_access *buf32 = (union usb_reg_access *)buf;

 if (!numreads)
  return 0;


 for (i = 0; i < numreads; i++) {
  buf32->dw = _nbu2ss_readl(&udc->p_regs->EP0_READ);
  buf32++;
 }

 return numreads * sizeof(u32);
}
