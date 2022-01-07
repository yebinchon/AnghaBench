
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fotg210_hcd {scalar_t__ rh_state; int command; TYPE_1__* regs; int lock; } ;
struct TYPE_2__ {int status; int command; } ;


 int CMD_ASE ;
 int CMD_PSE ;
 scalar_t__ FOTG210_RH_RUNNING ;
 int STS_ASS ;
 int STS_PSS ;
 int fotg210_writel (struct fotg210_hcd*,int,int *) ;
 int handshake (struct fotg210_hcd*,int *,int,int,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void fotg210_quiesce(struct fotg210_hcd *fotg210)
{
 u32 temp;

 if (fotg210->rh_state != FOTG210_RH_RUNNING)
  return;


 temp = (fotg210->command << 10) & (STS_ASS | STS_PSS);
 handshake(fotg210, &fotg210->regs->status, STS_ASS | STS_PSS, temp,
   16 * 125);


 spin_lock_irq(&fotg210->lock);
 fotg210->command &= ~(CMD_ASE | CMD_PSE);
 fotg210_writel(fotg210, fotg210->command, &fotg210->regs->command);
 spin_unlock_irq(&fotg210->lock);


 handshake(fotg210, &fotg210->regs->status, STS_ASS | STS_PSS, 0,
   16 * 125);
}
