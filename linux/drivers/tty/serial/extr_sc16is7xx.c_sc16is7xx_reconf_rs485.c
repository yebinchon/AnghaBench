
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct serial_rs485 {int flags; } ;
struct uart_port {int lock; struct serial_rs485 rs485; } ;


 int SC16IS7XX_EFCR_AUTO_RS485_BIT ;
 int SC16IS7XX_EFCR_REG ;
 int SC16IS7XX_EFCR_RTS_INVERT_BIT ;
 int SER_RS485_ENABLED ;
 int SER_RS485_RTS_AFTER_SEND ;
 int sc16is7xx_port_update (struct uart_port*,int ,int const,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sc16is7xx_reconf_rs485(struct uart_port *port)
{
 const u32 mask = SC16IS7XX_EFCR_AUTO_RS485_BIT |
    SC16IS7XX_EFCR_RTS_INVERT_BIT;
 u32 efcr = 0;
 struct serial_rs485 *rs485 = &port->rs485;
 unsigned long irqflags;

 spin_lock_irqsave(&port->lock, irqflags);
 if (rs485->flags & SER_RS485_ENABLED) {
  efcr |= SC16IS7XX_EFCR_AUTO_RS485_BIT;

  if (rs485->flags & SER_RS485_RTS_AFTER_SEND)
   efcr |= SC16IS7XX_EFCR_RTS_INVERT_BIT;
 }
 spin_unlock_irqrestore(&port->lock, irqflags);

 sc16is7xx_port_update(port, SC16IS7XX_EFCR_REG, mask, efcr);
}
