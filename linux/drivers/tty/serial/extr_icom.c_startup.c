
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct icom_port {unsigned char cable_id; int port; int int_reg; TYPE_4__* global_reg; TYPE_3__* adapter; TYPE_1__* dram; } ;
struct TYPE_11__ {unsigned long processor_id; int * global_int_mask; } ;
struct TYPE_10__ {int int_mask_2; int int_mask; } ;
struct TYPE_9__ {TYPE_2__* pci_dev; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int cable_id; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int EIO ;
 int ENODEV ;
 unsigned char ICOM_CABLE_ID_MASK ;
 unsigned char ICOM_CABLE_ID_VALID ;
 scalar_t__ NO_CABLE ;
 int dev_err (int *,char*) ;
 int icom_lock ;
 TYPE_5__* int_mask_tbl ;
 int load_code (struct icom_port*) ;
 unsigned char readb (int *) ;
 unsigned long readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace (struct icom_port*,char*,unsigned char) ;
 int writel (unsigned long,int *) ;
 int writew (int,int ) ;

__attribute__((used)) static int startup(struct icom_port *icom_port)
{
 unsigned long temp;
 unsigned char cable_id, raw_cable_id;
 unsigned long flags;
 int port;

 trace(icom_port, "STARTUP", 0);

 if (!icom_port->dram) {

  dev_err(&icom_port->adapter->pci_dev->dev,
   "Unusable Port, port configuration missing\n");
  return -ENODEV;
 }




 raw_cable_id = readb(&icom_port->dram->cable_id);
 trace(icom_port, "CABLE_ID", raw_cable_id);


 cable_id = (raw_cable_id & ICOM_CABLE_ID_MASK) >> 4;


 if (!(raw_cable_id & ICOM_CABLE_ID_VALID) ||
     (cable_id != icom_port->cable_id)) {


  load_code(icom_port);


  raw_cable_id = readb(&icom_port->dram->cable_id);
  cable_id = (raw_cable_id & ICOM_CABLE_ID_MASK) >> 4;
  if (!(raw_cable_id & ICOM_CABLE_ID_VALID) ||
      (icom_port->cable_id == NO_CABLE))
   return -EIO;
 }




 spin_lock_irqsave(&icom_lock, flags);
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

 if (port == 0 || port == 2)
  writew(0x00FF, icom_port->int_reg);
 else
  writew(0x3F00, icom_port->int_reg);

 temp = readl(int_mask_tbl[port].global_int_mask);
 writel(temp & ~int_mask_tbl[port].processor_id, int_mask_tbl[port].global_int_mask);


 readl(int_mask_tbl[port].global_int_mask);

unlock:
 spin_unlock_irqrestore(&icom_lock, flags);
 return 0;
}
