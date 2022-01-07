
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mv_udc {int ep0_dir; int ep0_state; TYPE_1__* op_regs; } ;
struct TYPE_2__ {int * epctrlx; } ;


 int EPCTRL_RX_EP_STALL ;
 int EPCTRL_TX_EP_STALL ;
 int EP_DIR_OUT ;
 int WAIT_FOR_SETUP ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void ep0_stall(struct mv_udc *udc)
{
 u32 epctrlx;


 epctrlx = readl(&udc->op_regs->epctrlx[0]);
 epctrlx |= EPCTRL_RX_EP_STALL | EPCTRL_TX_EP_STALL;
 writel(epctrlx, &udc->op_regs->epctrlx[0]);


 udc->ep0_state = WAIT_FOR_SETUP;
 udc->ep0_dir = EP_DIR_OUT;
}
