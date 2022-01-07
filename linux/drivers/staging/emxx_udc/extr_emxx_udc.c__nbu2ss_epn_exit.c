
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct nbu2ss_udc {scalar_t__ vbus_active; TYPE_2__* p_regs; } ;
struct nbu2ss_ep {int epnum; scalar_t__ direct; } ;
struct TYPE_4__ {TYPE_1__* EP_REGS; int USB_INT_ENA; } ;
struct TYPE_3__ {int EP_INT_ENA; int EP_CONTROL; int EP_PCKT_ADRS; } ;


 int EINVAL ;
 size_t EPN_AUTO ;
 size_t EPN_BCLR ;
 size_t EPN_DIR0 ;
 size_t EPN_EN ;
 size_t EPN_IN_EN ;
 size_t EPN_IN_END_EN ;
 size_t EPN_ONAK ;
 size_t EPN_OUT_EN ;
 size_t EPN_OUT_END_EN ;
 scalar_t__ USB_DIR_OUT ;
 int _nbu2ss_bitclr (int *,size_t) ;
 int _nbu2ss_bitset (int *,size_t) ;
 int _nbu2ss_writel (int *,int ) ;

__attribute__((used)) static int _nbu2ss_epn_exit(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
{
 u32 num;
 u32 data;

 if ((ep->epnum == 0) || (udc->vbus_active == 0))
  return -EINVAL;

 num = ep->epnum - 1;



 _nbu2ss_writel(&udc->p_regs->EP_REGS[num].EP_PCKT_ADRS, 0);



 data = 1 << (ep->epnum + 8);
 _nbu2ss_bitclr(&udc->p_regs->USB_INT_ENA, data);

 if (ep->direct == USB_DIR_OUT) {


  data = EPN_ONAK | EPN_BCLR;
  _nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);

  data = EPN_EN | EPN_DIR0;
  _nbu2ss_bitclr(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);

  data = EPN_OUT_EN | EPN_OUT_END_EN;
  _nbu2ss_bitclr(&udc->p_regs->EP_REGS[num].EP_INT_ENA, data);
 } else {


  data = EPN_BCLR;
  _nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);

  data = EPN_EN | EPN_AUTO;
  _nbu2ss_bitclr(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);

  data = EPN_IN_EN | EPN_IN_END_EN;
  _nbu2ss_bitclr(&udc->p_regs->EP_REGS[num].EP_INT_ENA, data);
 }

 return 0;
}
