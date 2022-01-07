
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fotg210_hcd {scalar_t__ resuming_ports; scalar_t__ suspended_ports; scalar_t__ port_c_suspend; int * debug; TYPE_1__* regs; int next_statechange; int rh_state; } ;
struct TYPE_2__ {int command; } ;


 int CMD_RESET ;
 int FOTG210_RH_HALTED ;
 int dbg_cmd (struct fotg210_hcd*,char*,int ) ;
 int dbgp_external_startup (int ) ;
 int dbgp_reset_prep (int ) ;
 int fotg210_readl (struct fotg210_hcd*,int *) ;
 int fotg210_to_hcd (struct fotg210_hcd*) ;
 int fotg210_writel (struct fotg210_hcd*,int ,int *) ;
 int handshake (struct fotg210_hcd*,int *,int ,int ,int) ;
 int jiffies ;

__attribute__((used)) static int fotg210_reset(struct fotg210_hcd *fotg210)
{
 int retval;
 u32 command = fotg210_readl(fotg210, &fotg210->regs->command);




 if (fotg210->debug && !dbgp_reset_prep(fotg210_to_hcd(fotg210)))
  fotg210->debug = ((void*)0);

 command |= CMD_RESET;
 dbg_cmd(fotg210, "reset", command);
 fotg210_writel(fotg210, command, &fotg210->regs->command);
 fotg210->rh_state = FOTG210_RH_HALTED;
 fotg210->next_statechange = jiffies;
 retval = handshake(fotg210, &fotg210->regs->command,
   CMD_RESET, 0, 250 * 1000);

 if (retval)
  return retval;

 if (fotg210->debug)
  dbgp_external_startup(fotg210_to_hcd(fotg210));

 fotg210->port_c_suspend = fotg210->suspended_ports =
   fotg210->resuming_ports = 0;
 return retval;
}
