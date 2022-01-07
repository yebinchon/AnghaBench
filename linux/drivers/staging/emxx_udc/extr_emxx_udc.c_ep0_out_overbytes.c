
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * DATA; } ;
union usb_reg_access {TYPE_2__ byte; int dw; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_3__ {int EP0_READ; } ;


 int _nbu2ss_readl (int *) ;

__attribute__((used)) static int ep0_out_overbytes(struct nbu2ss_udc *udc, u8 *p_buf, u32 length)
{
 u32 i;
 u32 i_read_size = 0;
 union usb_reg_access temp_32;
 union usb_reg_access *p_buf_32 = (union usb_reg_access *)p_buf;

 if ((length > 0) && (length < sizeof(u32))) {
  temp_32.dw = _nbu2ss_readl(&udc->p_regs->EP0_READ);
  for (i = 0 ; i < length ; i++)
   p_buf_32->byte.DATA[i] = temp_32.byte.DATA[i];
  i_read_size += length;
 }

 return i_read_size;
}
