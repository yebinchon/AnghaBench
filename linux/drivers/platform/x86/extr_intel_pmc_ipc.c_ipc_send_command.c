
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ ipc_base; int cmd_complete; scalar_t__ irq_mode; int cmd; } ;


 scalar_t__ IPC_CMD ;
 int IPC_CMD_MSI ;
 TYPE_1__ ipcdev ;
 int reinit_completion (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void ipc_send_command(u32 cmd)
{
 ipcdev.cmd = cmd;
 if (ipcdev.irq_mode) {
  reinit_completion(&ipcdev.cmd_complete);
  cmd |= IPC_CMD_MSI;
 }
 writel(cmd, ipcdev.ipc_base + IPC_CMD);
}
