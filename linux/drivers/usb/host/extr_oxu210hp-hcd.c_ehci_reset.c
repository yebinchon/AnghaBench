
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct oxu_hcd {TYPE_1__* regs; int next_statechange; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {int command; } ;


 int CMD_RESET ;
 int HC_STATE_HALT ;
 int dbg_cmd (struct oxu_hcd*,char*,int ) ;
 int handshake (struct oxu_hcd*,int *,int ,int ,int) ;
 int jiffies ;
 TYPE_2__* oxu_to_hcd (struct oxu_hcd*) ;
 int readl (int *) ;
 int tdi_reset (struct oxu_hcd*) ;
 int writel (int ,int *) ;

__attribute__((used)) static int ehci_reset(struct oxu_hcd *oxu)
{
 int retval;
 u32 command = readl(&oxu->regs->command);

 command |= CMD_RESET;
 dbg_cmd(oxu, "reset", command);
 writel(command, &oxu->regs->command);
 oxu_to_hcd(oxu)->state = HC_STATE_HALT;
 oxu->next_statechange = jiffies;
 retval = handshake(oxu, &oxu->regs->command,
       CMD_RESET, 0, 250 * 1000);

 if (retval)
  return retval;

 tdi_reset(oxu);

 return retval;
}
