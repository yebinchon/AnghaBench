
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct oxu_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int status; int command; int intr_enable; } ;


 int CMD_RUN ;
 int STS_HALT ;
 int handshake (struct oxu_hcd*,int *,int,int,int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int ehci_halt(struct oxu_hcd *oxu)
{
 u32 temp = readl(&oxu->regs->status);


 writel(0, &oxu->regs->intr_enable);

 if ((temp & STS_HALT) != 0)
  return 0;

 temp = readl(&oxu->regs->command);
 temp &= ~CMD_RUN;
 writel(temp, &oxu->regs->command);
 return handshake(oxu, &oxu->regs->status,
     STS_HALT, STS_HALT, 16 * 125);
}
