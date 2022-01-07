
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct sccnxp_port {int lock; TYPE_1__* chip; } ;
struct TYPE_2__ {int flags; } ;


 int DTR_OP ;
 int RTS_OP ;
 int SCCNXP_HAVE_IO ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 struct sccnxp_port* dev_get_drvdata (int ) ;
 int sccnxp_set_bit (struct uart_port*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sccnxp_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct sccnxp_port *s = dev_get_drvdata(port->dev);
 unsigned long flags;

 if (!(s->chip->flags & SCCNXP_HAVE_IO))
  return;

 spin_lock_irqsave(&s->lock, flags);

 sccnxp_set_bit(port, DTR_OP, mctrl & TIOCM_DTR);
 sccnxp_set_bit(port, RTS_OP, mctrl & TIOCM_RTS);

 spin_unlock_irqrestore(&s->lock, flags);
}
