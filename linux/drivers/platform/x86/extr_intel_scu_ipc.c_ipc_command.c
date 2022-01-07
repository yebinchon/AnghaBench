
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_scu_ipc_dev {int ipc_base; int cmd_complete; scalar_t__ irq_mode; } ;


 int IPC_IOC ;
 int reinit_completion (int *) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void ipc_command(struct intel_scu_ipc_dev *scu, u32 cmd)
{
 if (scu->irq_mode) {
  reinit_completion(&scu->cmd_complete);
  writel(cmd | IPC_IOC, scu->ipc_base);
 }
 writel(cmd, scu->ipc_base);
}
