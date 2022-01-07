
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mv_udc {TYPE_1__* op_regs; } ;
struct TYPE_2__ {int * portsc; } ;


 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void mv_set_ptc(struct mv_udc *udc, u32 mode)
{
 u32 portsc;

 portsc = readl(&udc->op_regs->portsc[0]);
 portsc |= mode << 16;
 writel(portsc, &udc->op_regs->portsc[0]);
}
