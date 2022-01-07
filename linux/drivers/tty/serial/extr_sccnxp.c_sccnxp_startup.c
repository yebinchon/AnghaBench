
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {size_t line; int dev; } ;
struct sccnxp_port {int* opened; int lock; TYPE_1__* chip; } ;
struct TYPE_2__ {int flags; } ;


 int CR_CMD_BREAK_RESET ;
 int CR_CMD_RX_RESET ;
 int CR_CMD_STATUS_RESET ;
 int CR_CMD_TX_RESET ;
 int CR_RX_ENABLE ;
 int CR_TX_ENABLE ;
 int IMR_RXRDY ;
 int SCCNXP_CR_REG ;
 int SCCNXP_HAVE_IO ;
 int SCCNXP_OPCR_REG ;
 struct sccnxp_port* dev_get_drvdata (int ) ;
 int sccnxp_enable_irq (struct uart_port*,int ) ;
 int sccnxp_port_write (struct uart_port*,int ,int) ;
 int sccnxp_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sccnxp_startup(struct uart_port *port)
{
 struct sccnxp_port *s = dev_get_drvdata(port->dev);
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);

 if (s->chip->flags & SCCNXP_HAVE_IO) {

  sccnxp_write(port, SCCNXP_OPCR_REG, 0);
 }


 sccnxp_port_write(port, SCCNXP_CR_REG, CR_CMD_RX_RESET);
 sccnxp_port_write(port, SCCNXP_CR_REG, CR_CMD_TX_RESET);
 sccnxp_port_write(port, SCCNXP_CR_REG, CR_CMD_STATUS_RESET);
 sccnxp_port_write(port, SCCNXP_CR_REG, CR_CMD_BREAK_RESET);


 sccnxp_port_write(port, SCCNXP_CR_REG, CR_RX_ENABLE | CR_TX_ENABLE);


 sccnxp_enable_irq(port, IMR_RXRDY);

 s->opened[port->line] = 1;

 spin_unlock_irqrestore(&s->lock, flags);

 return 0;
}
