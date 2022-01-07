
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct sccnxp_port {int lock; } ;


 int CR_CMD_START_BREAK ;
 int CR_CMD_STOP_BREAK ;
 int SCCNXP_CR_REG ;
 struct sccnxp_port* dev_get_drvdata (int ) ;
 int sccnxp_port_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sccnxp_break_ctl(struct uart_port *port, int break_state)
{
 struct sccnxp_port *s = dev_get_drvdata(port->dev);
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);
 sccnxp_port_write(port, SCCNXP_CR_REG, break_state ?
     CR_CMD_START_BREAK : CR_CMD_STOP_BREAK);
 spin_unlock_irqrestore(&s->lock, flags);
}
