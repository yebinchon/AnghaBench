
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct npe {TYPE_1__* regs; } ;
struct TYPE_2__ {int exec_status_cmd; } ;


 int CMD_NPE_CLR_PIPE ;
 int CMD_NPE_STOP ;
 int __raw_writel (int ,int *) ;

__attribute__((used)) static void npe_stop(struct npe *npe)
{
 __raw_writel(CMD_NPE_STOP, &npe->regs->exec_status_cmd);
 __raw_writel(CMD_NPE_CLR_PIPE, &npe->regs->exec_status_cmd);
}
