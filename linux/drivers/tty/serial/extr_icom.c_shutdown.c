
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct icom_port {int port; TYPE_4__* dram; TYPE_3__* global_reg; TYPE_2__* adapter; } ;
struct TYPE_11__ {unsigned long processor_id; int * global_int_mask; } ;
struct TYPE_10__ {int CmdReg; } ;
struct TYPE_9__ {int int_mask_2; int int_mask; } ;
struct TYPE_8__ {TYPE_1__* pci_dev; } ;
struct TYPE_7__ {int dev; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 unsigned char CMD_SND_BREAK ;
 int dev_err (int *,char*) ;
 int icom_lock ;
 TYPE_5__* int_mask_tbl ;
 unsigned char readb (int *) ;
 unsigned long readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace (struct icom_port*,char*,int ) ;
 int writeb (unsigned char,int *) ;
 int writel (unsigned long,int *) ;

__attribute__((used)) static void shutdown(struct icom_port *icom_port)
{
 unsigned long temp;
 unsigned char cmdReg;
 unsigned long flags;
 int port;

 spin_lock_irqsave(&icom_lock, flags);
 trace(icom_port, "SHUTDOWN", 0);




 port = icom_port->port;
 if (port >= ARRAY_SIZE(int_mask_tbl)) {
  dev_err(&icom_port->adapter->pci_dev->dev,
   "Invalid port assignment\n");
  goto unlock;
 }
 if (port == 0 || port == 1)
  int_mask_tbl[port].global_int_mask = &icom_port->global_reg->int_mask;
 else
  int_mask_tbl[port].global_int_mask = &icom_port->global_reg->int_mask_2;

 temp = readl(int_mask_tbl[port].global_int_mask);
 writel(temp | int_mask_tbl[port].processor_id, int_mask_tbl[port].global_int_mask);


 readl(int_mask_tbl[port].global_int_mask);

unlock:
 spin_unlock_irqrestore(&icom_lock, flags);




 cmdReg = readb(&icom_port->dram->CmdReg);
 if (cmdReg & CMD_SND_BREAK) {
  writeb(cmdReg & ~CMD_SND_BREAK, &icom_port->dram->CmdReg);
 }
}
