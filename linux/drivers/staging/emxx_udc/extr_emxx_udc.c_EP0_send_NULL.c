
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_2__ {int EP0_CONTROL; } ;


 int EP0_DEND ;
 scalar_t__ EP0_INAK ;
 int EP0_INAK_EN ;
 int EP0_PIDCLR ;
 int _nbu2ss_readl (int *) ;
 int _nbu2ss_writel (int *,int) ;

__attribute__((used)) static int EP0_send_NULL(struct nbu2ss_udc *udc, bool pid_flag)
{
 u32 data;

 data = _nbu2ss_readl(&udc->p_regs->EP0_CONTROL);
 data &= ~(u32)EP0_INAK;

 if (pid_flag)
  data |= (EP0_INAK_EN | EP0_PIDCLR | EP0_DEND);
 else
  data |= (EP0_INAK_EN | EP0_DEND);

 _nbu2ss_writel(&udc->p_regs->EP0_CONTROL, data);

 return 0;
}
