
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct icom_port {int port; TYPE_3__* global_reg; TYPE_2__* adapter; } ;
struct TYPE_11__ {unsigned long processor_id; int * global_control_reg; } ;
struct TYPE_10__ {unsigned long processor_id; } ;
struct TYPE_9__ {int control_2; int control; } ;
struct TYPE_8__ {TYPE_1__* pci_dev; } ;
struct TYPE_7__ {int dev; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int dev_err (int *,char*) ;
 int icom_lock ;
 unsigned long readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_5__* start_proc ;
 TYPE_4__* stop_proc ;
 int writel (unsigned long,int *) ;

__attribute__((used)) static void start_processor(struct icom_port *icom_port)
{
 unsigned long temp;
 unsigned long flags;
 int port;

 spin_lock_irqsave(&icom_lock, flags);

 port = icom_port->port;
 if (port >= ARRAY_SIZE(start_proc)) {
  dev_err(&icom_port->adapter->pci_dev->dev,
   "Invalid port assignment\n");
  goto unlock;
 }

 if (port == 0 || port == 1)
  start_proc[port].global_control_reg = &icom_port->global_reg->control;
 else
  start_proc[port].global_control_reg = &icom_port->global_reg->control_2;

 temp = readl(start_proc[port].global_control_reg);
 temp = (temp & ~stop_proc[port].processor_id) | start_proc[port].processor_id;
 writel(temp, start_proc[port].global_control_reg);


 readl(start_proc[port].global_control_reg);

unlock:
 spin_unlock_irqrestore(&icom_lock, flags);
}
