
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct npe {TYPE_1__* regs; } ;
struct TYPE_2__ {int exec_status_cmd; } ;


 int STAT_RUN ;
 int __raw_readl (int *) ;

int npe_running(struct npe *npe)
{
 return (__raw_readl(&npe->regs->exec_status_cmd) & STAT_RUN) != 0;
}
