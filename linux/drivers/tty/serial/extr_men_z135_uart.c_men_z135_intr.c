
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; scalar_t__ membase; } ;
struct men_z135_port {TYPE_1__* mdev; int stat_reg; struct uart_port port; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_ID (int ) ;
 int IRQ_RETVAL (int) ;
 int MEN_Z135_IRQ_ID_CTI ;
 int MEN_Z135_IRQ_ID_MST ;
 int MEN_Z135_IRQ_ID_RDA ;
 int MEN_Z135_IRQ_ID_RLS ;
 int MEN_Z135_IRQ_ID_TSA ;
 scalar_t__ MEN_Z135_STAT_REG ;
 int dev_dbg (int *,char*) ;
 int ioread32 (scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;
 int men_z135_handle_lsr (struct men_z135_port*) ;
 int men_z135_handle_modem_status (struct men_z135_port*) ;
 int men_z135_handle_rx (struct men_z135_port*) ;
 int men_z135_handle_tx (struct men_z135_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t men_z135_intr(int irq, void *data)
{
 struct men_z135_port *uart = (struct men_z135_port *)data;
 struct uart_port *port = &uart->port;
 bool handled = 0;
 int irq_id;

 uart->stat_reg = ioread32(port->membase + MEN_Z135_STAT_REG);
 irq_id = IRQ_ID(uart->stat_reg);

 if (!irq_id)
  goto out;

 spin_lock(&port->lock);

 iowrite8(irq_id, port->membase + MEN_Z135_STAT_REG);

 if (irq_id & MEN_Z135_IRQ_ID_RLS) {
  men_z135_handle_lsr(uart);
  handled = 1;
 }

 if (irq_id & (MEN_Z135_IRQ_ID_RDA | MEN_Z135_IRQ_ID_CTI)) {
  if (irq_id & MEN_Z135_IRQ_ID_CTI)
   dev_dbg(&uart->mdev->dev, "Character Timeout Indication\n");
  men_z135_handle_rx(uart);
  handled = 1;
 }

 if (irq_id & MEN_Z135_IRQ_ID_TSA) {
  men_z135_handle_tx(uart);
  handled = 1;
 }

 if (irq_id & MEN_Z135_IRQ_ID_MST) {
  men_z135_handle_modem_status(uart);
  handled = 1;
 }

 spin_unlock(&port->lock);
out:
 return IRQ_RETVAL(handled);
}
