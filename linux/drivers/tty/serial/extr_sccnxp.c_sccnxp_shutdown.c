
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {size_t line; int dev; } ;
struct sccnxp_port {int lock; TYPE_1__* chip; scalar_t__* opened; } ;
struct TYPE_2__ {int flags; } ;


 int CR_RX_DISABLE ;
 int CR_TX_DISABLE ;
 int DIR_OP ;
 int IMR_RXRDY ;
 int IMR_TXRDY ;
 int SCCNXP_CR_REG ;
 int SCCNXP_HAVE_IO ;
 struct sccnxp_port* dev_get_drvdata (int ) ;
 int sccnxp_disable_irq (struct uart_port*,int) ;
 int sccnxp_port_write (struct uart_port*,int ,int) ;
 int sccnxp_set_bit (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sccnxp_shutdown(struct uart_port *port)
{
 struct sccnxp_port *s = dev_get_drvdata(port->dev);
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);

 s->opened[port->line] = 0;


 sccnxp_disable_irq(port, IMR_TXRDY | IMR_RXRDY);


 sccnxp_port_write(port, SCCNXP_CR_REG, CR_RX_DISABLE | CR_TX_DISABLE);


 if (s->chip->flags & SCCNXP_HAVE_IO)
  sccnxp_set_bit(port, DIR_OP, 0);

 spin_unlock_irqrestore(&s->lock, flags);
}
