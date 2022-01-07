
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_2__ {int EP0_INT_ENA; int EP0_CONTROL; } ;


 int EP0_AUTO ;
 int EP0_BCLR ;
 int EP0_INT_EN_BIT ;
 int _nbu2ss_bitset (int *,int) ;
 int _nbu2ss_writel (int *,int ) ;

__attribute__((used)) static void _nbu2ss_ep0_enable(struct nbu2ss_udc *udc)
{
 _nbu2ss_bitset(&udc->p_regs->EP0_CONTROL, (EP0_AUTO | EP0_BCLR));
 _nbu2ss_writel(&udc->p_regs->EP0_INT_ENA, EP0_INT_EN_BIT);
}
