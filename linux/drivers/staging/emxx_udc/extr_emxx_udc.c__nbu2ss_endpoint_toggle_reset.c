
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nbu2ss_udc {TYPE_2__* p_regs; } ;
struct TYPE_4__ {TYPE_1__* EP_REGS; } ;
struct TYPE_3__ {int EP_CONTROL; } ;


 int EPN_BCLR ;
 int EPN_IPIDCLR ;
 int EPN_OPIDCLR ;
 int USB_DIR_IN ;
 int _nbu2ss_bitset (int *,int) ;

__attribute__((used)) static void _nbu2ss_endpoint_toggle_reset(struct nbu2ss_udc *udc, u8 ep_adrs)
{
 u8 num;
 u32 data;

 if ((ep_adrs == 0) || (ep_adrs == 0x80))
  return;

 num = (ep_adrs & 0x7F) - 1;

 if (ep_adrs & USB_DIR_IN)
  data = EPN_IPIDCLR;
 else
  data = EPN_BCLR | EPN_OPIDCLR;

 _nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);
}
