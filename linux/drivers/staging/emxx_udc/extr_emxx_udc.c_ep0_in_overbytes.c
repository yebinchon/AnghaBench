
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * DATA; } ;
union usb_reg_access {int dw; TYPE_1__ byte; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct nbu2ss_udc {int dummy; } ;


 int _nbu2ss_ep_in_end (struct nbu2ss_udc*,int ,int ,scalar_t__) ;

__attribute__((used)) static int ep0_in_overbytes(struct nbu2ss_udc *udc,
       u8 *p_buf,
       u32 i_remain_size)
{
 u32 i;
 union usb_reg_access temp_32;
 union usb_reg_access *p_buf_32 = (union usb_reg_access *)p_buf;

 if ((i_remain_size > 0) && (i_remain_size < sizeof(u32))) {
  for (i = 0 ; i < i_remain_size ; i++)
   temp_32.byte.DATA[i] = p_buf_32->byte.DATA[i];
  _nbu2ss_ep_in_end(udc, 0, temp_32.dw, i_remain_size);

  return i_remain_size;
 }

 return 0;
}
