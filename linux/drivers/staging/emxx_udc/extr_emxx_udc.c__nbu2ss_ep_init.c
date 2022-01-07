
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nbu2ss_udc {TYPE_3__* p_regs; } ;
struct TYPE_4__ {int maxpacket; } ;
struct nbu2ss_ep {int epnum; int ep_type; int direct; TYPE_1__ ep; } ;
struct TYPE_6__ {TYPE_2__* EP_REGS; int USB_INT_ENA; } ;
struct TYPE_5__ {int EP_INT_ENA; int EP_CONTROL; int EP_PCKT_ADRS; } ;


 int EINVAL ;
 int EPN_AUTO ;
 int EPN_BCLR ;
 int EPN_BUF_SINGLE ;
 int EPN_BULK ;
 int EPN_DIR0 ;
 int EPN_EN ;
 int EPN_INTERRUPT ;
 int EPN_IN_EN ;
 int EPN_IN_END_EN ;
 int EPN_ISO ;
 int EPN_ISTL ;
 int EPN_ONAK ;
 int EPN_OSTL ;
 int EPN_OSTL_EN ;
 int EPN_OUT_EN ;
 int EPN_OUT_END_EN ;
 int USB_DIR_OUT ;



 int _nbu2ss_bitclr (int *,int) ;
 int _nbu2ss_bitset (int *,int) ;
 int _nbu2ss_endpoint_toggle_reset (struct nbu2ss_udc*,int) ;
 int _nbu2ss_get_begin_ram_address (struct nbu2ss_udc*) ;
 int _nbu2ss_writel (int *,int) ;

__attribute__((used)) static int _nbu2ss_ep_init(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
{
 u32 num;
 u32 data;
 u32 begin_adrs;

 if (ep->epnum == 0)
  return -EINVAL;

 num = ep->epnum - 1;



 begin_adrs = _nbu2ss_get_begin_ram_address(udc);
 data = (begin_adrs << 16) | ep->ep.maxpacket;
 _nbu2ss_writel(&udc->p_regs->EP_REGS[num].EP_PCKT_ADRS, data);



 data = 1 << (ep->epnum + 8);
 _nbu2ss_bitset(&udc->p_regs->USB_INT_ENA, data);




 switch (ep->ep_type) {
 case 130:
  data = EPN_BULK;
  break;

 case 129:
  data = EPN_BUF_SINGLE | EPN_INTERRUPT;
  break;

 case 128:
  data = EPN_ISO;
  break;

 default:
  data = 0;
  break;
 }

 _nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);
 _nbu2ss_endpoint_toggle_reset(udc, (ep->epnum | ep->direct));

 if (ep->direct == USB_DIR_OUT) {


  data = EPN_EN | EPN_BCLR | EPN_DIR0;
  _nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);

  data = EPN_ONAK | EPN_OSTL_EN | EPN_OSTL;
  _nbu2ss_bitclr(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);

  data = EPN_OUT_EN | EPN_OUT_END_EN;
  _nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_INT_ENA, data);
 } else {


  data = EPN_EN | EPN_BCLR | EPN_AUTO;
  _nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);

  data = EPN_ISTL;
  _nbu2ss_bitclr(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);

  data = EPN_IN_EN | EPN_IN_END_EN;
  _nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_INT_ENA, data);
 }

 return 0;
}
