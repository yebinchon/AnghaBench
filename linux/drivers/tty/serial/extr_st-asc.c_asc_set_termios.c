
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int tcflag_t ;
struct uart_port {int uartclk; int lock; TYPE_2__* dev; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int name; int fwnode; } ;
struct TYPE_4__ {int read_status_mask; int ignore_status_mask; } ;
struct asc_port {TYPE_1__ port; int force_m1; struct gpio_desc* rts; scalar_t__* states; int pinctrl; int clk; scalar_t__ hw_flow_control; } ;
struct TYPE_5__ {struct device_node* of_node; } ;


 int ASC_BAUDRATE ;
 int ASC_CTL ;
 int ASC_CTL_BAUDMODE ;
 int ASC_CTL_CTSENABLE ;
 int ASC_CTL_FIFOENABLE ;
 int ASC_CTL_MODE_7BIT_PAR ;
 int ASC_CTL_MODE_8BIT ;
 int ASC_CTL_MODE_8BIT_PAR ;
 int ASC_CTL_PARITYODD ;
 int ASC_CTL_RUN ;
 int ASC_CTL_RXENABLE ;
 int ASC_CTL_STOP_1BIT ;
 int ASC_CTL_STOP_2BIT ;
 int ASC_RXBUF_DUMMY_BE ;
 int ASC_RXBUF_DUMMY_OE ;
 int ASC_RXBUF_DUMMY_RX ;
 int ASC_RXBUF_FE ;
 int ASC_RXBUF_PE ;
 int ASC_RXRESET ;
 int ASC_TIMEOUT ;
 int ASC_TXRESET ;
 int BRKINT ;
 int CMSPAR ;
 int CREAD ;
 int CRTSCTS ;
 int CS7 ;
 int CSIZE ;
 int CSTOPB ;
 size_t DEFAULT ;
 int GPIOD_OUT_LOW ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int IS_ERR (struct gpio_desc*) ;
 size_t NO_HW_FLOWCTRL ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int asc_in (struct uart_port*,int ) ;
 int asc_out (struct uart_port*,int ,int) ;
 int clk_get_rate (int ) ;
 struct gpio_desc* devm_fwnode_get_gpiod_from_child (TYPE_2__*,char*,int *,int ,int ) ;
 int devm_gpiod_put (TYPE_2__*,struct gpio_desc*) ;
 int do_div (int,int) ;
 int pinctrl_select_state (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct asc_port* to_asc_port (struct uart_port*) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void asc_set_termios(struct uart_port *port, struct ktermios *termios,
       struct ktermios *old)
{
 struct asc_port *ascport = to_asc_port(port);
 struct device_node *np = port->dev->of_node;
 struct gpio_desc *gpiod;
 unsigned int baud;
 u32 ctrl_val;
 tcflag_t cflag;
 unsigned long flags;


 termios->c_cflag &= ~(CMSPAR |
    (ascport->hw_flow_control ? 0 : CRTSCTS));

 port->uartclk = clk_get_rate(ascport->clk);

 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 cflag = termios->c_cflag;

 spin_lock_irqsave(&port->lock, flags);


 ctrl_val = asc_in(port, ASC_CTL);


 asc_out(port, ASC_CTL, (ctrl_val & ~ASC_CTL_RUN));
 ctrl_val = ASC_CTL_RXENABLE | ASC_CTL_FIFOENABLE;


 asc_out(port, ASC_TXRESET, 1);
 asc_out(port, ASC_RXRESET, 1);


 if ((cflag & CSIZE) == CS7) {
  ctrl_val |= ASC_CTL_MODE_7BIT_PAR;
 } else {
  ctrl_val |= (cflag & PARENB) ? ASC_CTL_MODE_8BIT_PAR :
      ASC_CTL_MODE_8BIT;
 }


 ctrl_val |= (cflag & CSTOPB) ? ASC_CTL_STOP_2BIT : ASC_CTL_STOP_1BIT;


 if (cflag & PARODD)
  ctrl_val |= ASC_CTL_PARITYODD;


 if ((cflag & CRTSCTS)) {
  ctrl_val |= ASC_CTL_CTSENABLE;


  if (ascport->rts) {
   devm_gpiod_put(port->dev, ascport->rts);
   ascport->rts = ((void*)0);

   pinctrl_select_state(ascport->pinctrl,
          ascport->states[DEFAULT]);
  }
 } else {

  if (!ascport->rts && ascport->states[NO_HW_FLOWCTRL]) {
   pinctrl_select_state(ascport->pinctrl,
          ascport->states[NO_HW_FLOWCTRL]);

   gpiod = devm_fwnode_get_gpiod_from_child(port->dev,
         "rts",
         &np->fwnode,
         GPIOD_OUT_LOW,
         np->name);
   if (!IS_ERR(gpiod))
    ascport->rts = gpiod;
  }
 }

 if ((baud < 19200) && !ascport->force_m1) {
  asc_out(port, ASC_BAUDRATE, (port->uartclk / (16 * baud)));
 } else {
  u64 dividend = (u64)baud * (1 << 16);

  do_div(dividend, port->uartclk / 16);
  asc_out(port, ASC_BAUDRATE, dividend);
  ctrl_val |= ASC_CTL_BAUDMODE;
 }

 uart_update_timeout(port, cflag, baud);

 ascport->port.read_status_mask = ASC_RXBUF_DUMMY_OE;
 if (termios->c_iflag & INPCK)
  ascport->port.read_status_mask |= ASC_RXBUF_FE | ASC_RXBUF_PE;
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  ascport->port.read_status_mask |= ASC_RXBUF_DUMMY_BE;




 ascport->port.ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  ascport->port.ignore_status_mask |= ASC_RXBUF_FE | ASC_RXBUF_PE;
 if (termios->c_iflag & IGNBRK) {
  ascport->port.ignore_status_mask |= ASC_RXBUF_DUMMY_BE;




  if (termios->c_iflag & IGNPAR)
   ascport->port.ignore_status_mask |= ASC_RXBUF_DUMMY_OE;
 }




 if (!(termios->c_cflag & CREAD))
  ascport->port.ignore_status_mask |= ASC_RXBUF_DUMMY_RX;


 asc_out(port, ASC_TIMEOUT, 20);


 asc_out(port, ASC_CTL, (ctrl_val | ASC_CTL_RUN));

 spin_unlock_irqrestore(&port->lock, flags);
}
