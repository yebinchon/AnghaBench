
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct sccnxp_port {int lock; TYPE_1__* chip; } ;
struct TYPE_2__ {int flags; } ;


 int DIR_OP ;
 int IMR_TXRDY ;
 int SCCNXP_HAVE_IO ;
 struct sccnxp_port* dev_get_drvdata (int ) ;
 int sccnxp_enable_irq (struct uart_port*,int ) ;
 int sccnxp_set_bit (struct uart_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sccnxp_start_tx(struct uart_port *port)
{
 struct sccnxp_port *s = dev_get_drvdata(port->dev);
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);


 if (s->chip->flags & SCCNXP_HAVE_IO)
  sccnxp_set_bit(port, DIR_OP, 1);

 sccnxp_enable_irq(port, IMR_TXRDY);

 spin_unlock_irqrestore(&s->lock, flags);
}
