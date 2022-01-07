
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int cmd_complete; } ;
typedef TYPE_1__ IPC_DEV ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t intel_punit_ioc(int irq, void *dev_id)
{
 IPC_DEV *ipcdev = dev_id;

 complete(&ipcdev->cmd_complete);
 return IRQ_HANDLED;
}
