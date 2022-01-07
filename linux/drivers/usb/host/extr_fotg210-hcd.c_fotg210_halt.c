
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fotg210_hcd {int command; TYPE_1__* regs; int lock; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int status; int command; int intr_enable; } ;


 int CMD_IAAD ;
 int CMD_RUN ;
 int STS_HALT ;
 int fotg210_readl (struct fotg210_hcd*,int *) ;
 TYPE_2__* fotg210_to_hcd (struct fotg210_hcd*) ;
 int fotg210_writel (struct fotg210_hcd*,int,int *) ;
 int handshake (struct fotg210_hcd*,int *,int ,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int fotg210_halt(struct fotg210_hcd *fotg210)
{
 u32 temp;

 spin_lock_irq(&fotg210->lock);


 fotg210_writel(fotg210, 0, &fotg210->regs->intr_enable);





 fotg210->command &= ~CMD_RUN;
 temp = fotg210_readl(fotg210, &fotg210->regs->command);
 temp &= ~(CMD_RUN | CMD_IAAD);
 fotg210_writel(fotg210, temp, &fotg210->regs->command);

 spin_unlock_irq(&fotg210->lock);
 synchronize_irq(fotg210_to_hcd(fotg210)->irq);

 return handshake(fotg210, &fotg210->regs->status,
   STS_HALT, STS_HALT, 16 * 125);
}
