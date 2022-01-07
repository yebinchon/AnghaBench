
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int index; struct port* driver_data; } ;
struct TYPE_3__ {scalar_t__ CTS; } ;
struct port {TYPE_1__ ctrl_dl; int fifo_ul; } ;
struct nozomi {int spin_mutex; TYPE_2__* pdev; struct port* port; } ;
struct TYPE_4__ {int dev; } ;


 int DBG4 (char*) ;
 int EINVAL ;
 int ENODEV ;
 int MAX_PORT ;
 size_t PORT_MDM ;
 int dev_err (int *,char*) ;
 int enable_transmit_ul (int,struct nozomi*) ;
 struct nozomi* get_dc_by_tty (struct tty_struct*) ;
 int kfifo_in (int *,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ntty_write(struct tty_struct *tty, const unsigned char *buffer,
        int count)
{
 int rval = -EINVAL;
 struct nozomi *dc = get_dc_by_tty(tty);
 struct port *port = tty->driver_data;
 unsigned long flags;



 if (!dc || !port)
  return -ENODEV;

 rval = kfifo_in(&port->fifo_ul, (unsigned char *)buffer, count);

 spin_lock_irqsave(&dc->spin_mutex, flags);

 if (port == &(dc->port[PORT_MDM])) {
  if (port->ctrl_dl.CTS) {
   DBG4("Enable interrupt");
   enable_transmit_ul(tty->index % MAX_PORT, dc);
  } else {
   dev_err(&dc->pdev->dev,
    "CTS not active on modem port?\n");
  }
 } else {
  enable_transmit_ul(tty->index % MAX_PORT, dc);
 }
 spin_unlock_irqrestore(&dc->spin_mutex, flags);

 return rval;
}
