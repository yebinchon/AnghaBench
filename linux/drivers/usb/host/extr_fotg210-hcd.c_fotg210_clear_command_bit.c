
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fotg210_hcd {TYPE_1__* regs; int command; } ;
struct TYPE_2__ {int command; } ;


 int fotg210_readl (struct fotg210_hcd*,int *) ;
 int fotg210_writel (struct fotg210_hcd*,int ,int *) ;

__attribute__((used)) static void fotg210_clear_command_bit(struct fotg210_hcd *fotg210, u32 bit)
{
 fotg210->command &= ~bit;
 fotg210_writel(fotg210, fotg210->command, &fotg210->regs->command);


 fotg210_readl(fotg210, &fotg210->regs->command);
}
