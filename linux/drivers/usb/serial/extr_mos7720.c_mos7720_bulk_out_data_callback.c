
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; TYPE_2__* dev; struct moschip_port* context; } ;
struct moschip_port {TYPE_1__* port; scalar_t__ open; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int port; } ;


 int dev_dbg (int *,char*,...) ;
 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static void mos7720_bulk_out_data_callback(struct urb *urb)
{
 struct moschip_port *mos7720_port;
 int status = urb->status;

 if (status) {
  dev_dbg(&urb->dev->dev, "nonzero write bulk status received:%d\n", status);
  return;
 }

 mos7720_port = urb->context;
 if (!mos7720_port) {
  dev_dbg(&urb->dev->dev, "NULL mos7720_port pointer\n");
  return ;
 }

 if (mos7720_port->open)
  tty_port_tty_wakeup(&mos7720_port->port->port);
}
