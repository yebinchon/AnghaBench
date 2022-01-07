
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int read_status_mask; int ignore_status_mask; int status; int uartclk; } ;
struct ktermios {int c_cflag; int c_iflag; unsigned int* c_cc; } ;


 int BRKINT ;
 int CMSPAR ;
 int CREAD ;
 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int INPCK ;
 int IXOFF ;
 int IXON ;
 unsigned int MAX310X_FLOWCTRL_AUTOCTS_BIT ;
 unsigned int MAX310X_FLOWCTRL_AUTORTS_BIT ;
 int MAX310X_FLOWCTRL_REG ;
 unsigned int MAX310X_FLOWCTRL_SWFLOW1_BIT ;
 unsigned int MAX310X_FLOWCTRL_SWFLOW3_BIT ;
 unsigned int MAX310X_FLOWCTRL_SWFLOWEN_BIT ;
 unsigned int MAX310X_LCR_EVENPARITY_BIT ;
 unsigned int MAX310X_LCR_LENGTH0_BIT ;
 unsigned int MAX310X_LCR_LENGTH1_BIT ;
 unsigned int MAX310X_LCR_PARITY_BIT ;
 int MAX310X_LCR_REG ;
 unsigned int MAX310X_LCR_STOPLEN_BIT ;
 int MAX310X_LSR_FRERR_BIT ;
 int MAX310X_LSR_RXBRK_BIT ;
 int MAX310X_LSR_RXOVR_BIT ;
 int MAX310X_LSR_RXPAR_BIT ;
 int MAX310X_MODE1_REG ;
 int MAX310X_MODE1_TXDIS_BIT ;
 int MAX310X_XOFF1_REG ;
 int MAX310X_XON1_REG ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int UPSTAT_AUTOCTS ;
 int UPSTAT_AUTORTS ;
 int UPSTAT_AUTOXOFF ;
 size_t VSTART ;
 size_t VSTOP ;
 int max310x_port_update (struct uart_port*,int ,int ,int ) ;
 int max310x_port_write (struct uart_port*,int ,unsigned int) ;
 int max310x_set_baud (struct uart_port*,int) ;
 int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_update_timeout (struct uart_port*,int,int) ;

__attribute__((used)) static void max310x_set_termios(struct uart_port *port,
    struct ktermios *termios,
    struct ktermios *old)
{
 unsigned int lcr = 0, flow = 0;
 int baud;


 termios->c_cflag &= ~CMSPAR;


 switch (termios->c_cflag & CSIZE) {
 case 131:
  break;
 case 130:
  lcr = MAX310X_LCR_LENGTH0_BIT;
  break;
 case 129:
  lcr = MAX310X_LCR_LENGTH1_BIT;
  break;
 case 128:
 default:
  lcr = MAX310X_LCR_LENGTH1_BIT | MAX310X_LCR_LENGTH0_BIT;
  break;
 }


 if (termios->c_cflag & PARENB) {
  lcr |= MAX310X_LCR_PARITY_BIT;
  if (!(termios->c_cflag & PARODD))
   lcr |= MAX310X_LCR_EVENPARITY_BIT;
 }


 if (termios->c_cflag & CSTOPB)
  lcr |= MAX310X_LCR_STOPLEN_BIT;


 max310x_port_write(port, MAX310X_LCR_REG, lcr);


 port->read_status_mask = MAX310X_LSR_RXOVR_BIT;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= MAX310X_LSR_RXPAR_BIT |
       MAX310X_LSR_FRERR_BIT;
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  port->read_status_mask |= MAX310X_LSR_RXBRK_BIT;


 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNBRK)
  port->ignore_status_mask |= MAX310X_LSR_RXBRK_BIT;
 if (!(termios->c_cflag & CREAD))
  port->ignore_status_mask |= MAX310X_LSR_RXPAR_BIT |
         MAX310X_LSR_RXOVR_BIT |
         MAX310X_LSR_FRERR_BIT |
         MAX310X_LSR_RXBRK_BIT;


 max310x_port_write(port, MAX310X_XON1_REG, termios->c_cc[VSTART]);
 max310x_port_write(port, MAX310X_XOFF1_REG, termios->c_cc[VSTOP]);




 if (termios->c_cflag & CRTSCTS || termios->c_iflag & IXOFF) {
  max310x_port_update(port, MAX310X_MODE1_REG,
        MAX310X_MODE1_TXDIS_BIT,
        MAX310X_MODE1_TXDIS_BIT);
 }

 port->status &= ~(UPSTAT_AUTOCTS | UPSTAT_AUTORTS | UPSTAT_AUTOXOFF);

 if (termios->c_cflag & CRTSCTS) {

  port->status |= UPSTAT_AUTOCTS | UPSTAT_AUTORTS;
  flow |= MAX310X_FLOWCTRL_AUTOCTS_BIT |
   MAX310X_FLOWCTRL_AUTORTS_BIT;
 }
 if (termios->c_iflag & IXON)
  flow |= MAX310X_FLOWCTRL_SWFLOW3_BIT |
   MAX310X_FLOWCTRL_SWFLOWEN_BIT;
 if (termios->c_iflag & IXOFF) {
  port->status |= UPSTAT_AUTOXOFF;
  flow |= MAX310X_FLOWCTRL_SWFLOW1_BIT |
   MAX310X_FLOWCTRL_SWFLOWEN_BIT;
 }
 max310x_port_write(port, MAX310X_FLOWCTRL_REG, flow);




 if (!(termios->c_cflag & CRTSCTS) && !(termios->c_iflag & IXOFF)) {
  max310x_port_update(port, MAX310X_MODE1_REG,
        MAX310X_MODE1_TXDIS_BIT,
        0);
 }


 baud = uart_get_baud_rate(port, termios, old,
      port->uartclk / 16 / 0xffff,
      port->uartclk / 4);


 baud = max310x_set_baud(port, baud);


 uart_update_timeout(port, termios->c_cflag, baud);
}
