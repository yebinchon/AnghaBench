
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct oxu_hcd {TYPE_1__* regs; } ;
struct TYPE_4__ {void* state; } ;
struct TYPE_3__ {int status; int command; } ;


 int BUG_ON (int) ;
 int CMD_ASE ;
 int CMD_IAAD ;
 int CMD_PSE ;
 int HC_IS_RUNNING (void*) ;
 void* HC_STATE_HALT ;
 int STS_ASS ;
 int STS_PSS ;
 scalar_t__ handshake (struct oxu_hcd*,int *,int,int,int) ;
 TYPE_2__* oxu_to_hcd (struct oxu_hcd*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void ehci_quiesce(struct oxu_hcd *oxu)
{
 u32 temp;






 temp = readl(&oxu->regs->command) << 10;
 temp &= STS_ASS | STS_PSS;
 if (handshake(oxu, &oxu->regs->status, STS_ASS | STS_PSS,
    temp, 16 * 125) != 0) {
  oxu_to_hcd(oxu)->state = HC_STATE_HALT;
  return;
 }


 temp = readl(&oxu->regs->command);
 temp &= ~(CMD_ASE | CMD_IAAD | CMD_PSE);
 writel(temp, &oxu->regs->command);


 if (handshake(oxu, &oxu->regs->status, STS_ASS | STS_PSS,
    0, 16 * 125) != 0) {
  oxu_to_hcd(oxu)->state = HC_STATE_HALT;
  return;
 }
}
