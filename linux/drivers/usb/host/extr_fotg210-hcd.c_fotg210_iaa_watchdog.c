
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int lost_iaa; } ;
struct fotg210_hcd {scalar_t__ rh_state; TYPE_2__* regs; TYPE_1__ stats; scalar_t__ async_iaa; } ;
struct TYPE_4__ {int status; int command; } ;


 int CMD_IAAD ;
 scalar_t__ FOTG210_RH_RUNNING ;
 int INCR (int ) ;
 int STS_IAA ;
 int end_unlink_async (struct fotg210_hcd*) ;
 int fotg210_dbg (struct fotg210_hcd*,char*,int,int) ;
 int fotg210_readl (struct fotg210_hcd*,int *) ;
 int fotg210_writel (struct fotg210_hcd*,int,int *) ;

__attribute__((used)) static void fotg210_iaa_watchdog(struct fotg210_hcd *fotg210)
{
 if (fotg210->rh_state != FOTG210_RH_RUNNING)
  return;







 if (fotg210->async_iaa) {
  u32 cmd, status;







  cmd = fotg210_readl(fotg210, &fotg210->regs->command);
  status = fotg210_readl(fotg210, &fotg210->regs->status);
  if ((status & STS_IAA) || !(cmd & CMD_IAAD)) {
   INCR(fotg210->stats.lost_iaa);
   fotg210_writel(fotg210, STS_IAA,
     &fotg210->regs->status);
  }

  fotg210_dbg(fotg210, "IAA watchdog: status %x cmd %x\n",
    status, cmd);
  end_unlink_async(fotg210);
 }
}
