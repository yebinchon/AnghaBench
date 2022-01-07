
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct uart_port {int uartclk; int lock; int dev; } ;
struct rda_uart_port {int dummy; } ;
struct ktermios {int c_cflag; } ;


 int CMSPAR ;
 int CRTSCTS ;



 int CSIZE ;
 int CSTOPB ;
 int PARENB ;
 int PARODD ;
 unsigned int RDA_UART_AFC_LEVEL (int) ;
 int RDA_UART_CMD_CLR ;
 int RDA_UART_CMD_SET ;
 int RDA_UART_CTRL ;
 unsigned int RDA_UART_DBITS_8 ;
 unsigned int RDA_UART_DMA_EN ;
 unsigned int RDA_UART_ENABLE ;
 unsigned int RDA_UART_FLOW_CNT_EN ;
 int RDA_UART_IRQ_MASK ;
 int RDA_UART_IRQ_TRIGGERS ;
 unsigned int RDA_UART_PARITY_EN ;
 unsigned int RDA_UART_PARITY_EVEN ;
 unsigned int RDA_UART_PARITY_MARK ;
 unsigned int RDA_UART_PARITY_ODD ;
 unsigned int RDA_UART_PARITY_SPACE ;
 unsigned int RDA_UART_RTS ;
 unsigned int RDA_UART_RX_TRIGGER (int) ;
 unsigned int RDA_UART_TX_SBITS_2 ;
 int dev_warn (int ,char*) ;
 int rda_uart_change_baudrate (struct rda_uart_port*,unsigned int) ;
 unsigned int rda_uart_read (struct uart_port*,int ) ;
 int rda_uart_write (struct uart_port*,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rda_uart_port* to_rda_uart_port (struct uart_port*) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void rda_uart_set_termios(struct uart_port *port,
     struct ktermios *termios,
     struct ktermios *old)
{
 struct rda_uart_port *rda_port = to_rda_uart_port(port);
 unsigned long flags;
 unsigned int ctrl, cmd_set, cmd_clr, triggers;
 unsigned int baud;
 u32 irq_mask;

 spin_lock_irqsave(&port->lock, flags);

 baud = uart_get_baud_rate(port, termios, old, 9600, port->uartclk / 4);
 rda_uart_change_baudrate(rda_port, baud);

 ctrl = rda_uart_read(port, RDA_UART_CTRL);
 cmd_set = rda_uart_read(port, RDA_UART_CMD_SET);
 cmd_clr = rda_uart_read(port, RDA_UART_CMD_CLR);

 switch (termios->c_cflag & CSIZE) {
 case 130:
 case 129:
  dev_warn(port->dev, "bit size not supported, using 7 bits\n");

 case 128:
  ctrl &= ~RDA_UART_DBITS_8;
  break;
 default:
  ctrl |= RDA_UART_DBITS_8;
  break;
 }


 if (termios->c_cflag & CSTOPB)
  ctrl |= RDA_UART_TX_SBITS_2;
 else
  ctrl &= ~RDA_UART_TX_SBITS_2;


 if (termios->c_cflag & PARENB) {
  ctrl |= RDA_UART_PARITY_EN;


  if (termios->c_cflag & CMSPAR) {
   if (termios->c_cflag & PARODD)
    ctrl |= RDA_UART_PARITY_MARK;
   else
    ctrl |= RDA_UART_PARITY_SPACE;
  } else if (termios->c_cflag & PARODD) {
   ctrl |= RDA_UART_PARITY_ODD;
  } else {
   ctrl |= RDA_UART_PARITY_EVEN;
  }
 } else {
  ctrl &= ~RDA_UART_PARITY_EN;
 }


 if (termios->c_cflag & CRTSCTS) {
  ctrl |= RDA_UART_FLOW_CNT_EN;
  cmd_set |= RDA_UART_RTS;
 } else {
  ctrl &= ~RDA_UART_FLOW_CNT_EN;
  cmd_clr |= RDA_UART_RTS;
 }

 ctrl |= RDA_UART_ENABLE;
 ctrl &= ~RDA_UART_DMA_EN;

 triggers = (RDA_UART_AFC_LEVEL(20) | RDA_UART_RX_TRIGGER(16));
 irq_mask = rda_uart_read(port, RDA_UART_IRQ_MASK);
 rda_uart_write(port, 0, RDA_UART_IRQ_MASK);

 rda_uart_write(port, triggers, RDA_UART_IRQ_TRIGGERS);
 rda_uart_write(port, ctrl, RDA_UART_CTRL);
 rda_uart_write(port, cmd_set, RDA_UART_CMD_SET);
 rda_uart_write(port, cmd_clr, RDA_UART_CMD_CLR);

 rda_uart_write(port, irq_mask, RDA_UART_IRQ_MASK);


 if (tty_termios_baud_rate(termios))
  tty_termios_encode_baud_rate(termios, baud, baud);


 uart_update_timeout(port, termios->c_cflag, baud);

 spin_unlock_irqrestore(&port->lock, flags);
}
