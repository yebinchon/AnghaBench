
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int cmd_complete; scalar_t__ ipc_base; scalar_t__ irq_mode; } ;


 scalar_t__ IPC_STATUS ;
 int IPC_STATUS_IRQ ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int ipc_read_status () ;
 TYPE_1__ ipcdev ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t ioc(int irq, void *dev_id)
{
 int status;

 if (ipcdev.irq_mode) {
  status = ipc_read_status();
  writel(status | IPC_STATUS_IRQ, ipcdev.ipc_base + IPC_STATUS);
 }
 complete(&ipcdev.cmd_complete);

 return IRQ_HANDLED;
}
