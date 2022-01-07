
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {int dev; } ;
struct sccnxp_port {int lock; } ;


 int SCCNXP_SR_REG ;
 int SR_TXEMT ;
 unsigned int TIOCSER_TEMT ;
 struct sccnxp_port* dev_get_drvdata (int ) ;
 int sccnxp_port_read (struct uart_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int sccnxp_tx_empty(struct uart_port *port)
{
 u8 val;
 unsigned long flags;
 struct sccnxp_port *s = dev_get_drvdata(port->dev);

 spin_lock_irqsave(&s->lock, flags);
 val = sccnxp_port_read(port, SCCNXP_SR_REG);
 spin_unlock_irqrestore(&s->lock, flags);

 return (val & SR_TXEMT) ? TIOCSER_TEMT : 0;
}
