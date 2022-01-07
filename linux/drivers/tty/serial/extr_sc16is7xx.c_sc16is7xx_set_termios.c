
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int read_status_mask; int ignore_status_mask; int uartclk; int dev; } ;
struct sc16is7xx_port {int efr_lock; int regmap; } ;
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
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 unsigned int SC16IS7XX_EFR_AUTOCTS_BIT ;
 unsigned int SC16IS7XX_EFR_AUTORTS_BIT ;
 int SC16IS7XX_EFR_REG ;
 unsigned int SC16IS7XX_EFR_SWFLOW1_BIT ;
 unsigned int SC16IS7XX_EFR_SWFLOW3_BIT ;
 unsigned int SC16IS7XX_LCR_CONF_MODE_B ;
 unsigned int SC16IS7XX_LCR_EVENPARITY_BIT ;
 unsigned int SC16IS7XX_LCR_PARITY_BIT ;
 int SC16IS7XX_LCR_REG ;
 unsigned int SC16IS7XX_LCR_STOPLEN_BIT ;
 unsigned int SC16IS7XX_LCR_WORD_LEN_5 ;
 unsigned int SC16IS7XX_LCR_WORD_LEN_6 ;
 unsigned int SC16IS7XX_LCR_WORD_LEN_7 ;
 unsigned int SC16IS7XX_LCR_WORD_LEN_8 ;
 int SC16IS7XX_LSR_BI_BIT ;
 int SC16IS7XX_LSR_BRK_ERROR_MASK ;
 int SC16IS7XX_LSR_FE_BIT ;
 int SC16IS7XX_LSR_OE_BIT ;
 int SC16IS7XX_LSR_PE_BIT ;
 int SC16IS7XX_XOFF1_REG ;
 int SC16IS7XX_XON1_REG ;
 size_t VSTART ;
 size_t VSTOP ;
 struct sc16is7xx_port* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regcache_cache_bypass (int ,int) ;
 int sc16is7xx_port_write (struct uart_port*,int ,unsigned int) ;
 int sc16is7xx_set_baud (struct uart_port*,int) ;
 int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_update_timeout (struct uart_port*,int,int) ;

__attribute__((used)) static void sc16is7xx_set_termios(struct uart_port *port,
      struct ktermios *termios,
      struct ktermios *old)
{
 struct sc16is7xx_port *s = dev_get_drvdata(port->dev);
 unsigned int lcr, flow = 0;
 int baud;


 termios->c_cflag &= ~CMSPAR;


 switch (termios->c_cflag & CSIZE) {
 case 131:
  lcr = SC16IS7XX_LCR_WORD_LEN_5;
  break;
 case 130:
  lcr = SC16IS7XX_LCR_WORD_LEN_6;
  break;
 case 129:
  lcr = SC16IS7XX_LCR_WORD_LEN_7;
  break;
 case 128:
  lcr = SC16IS7XX_LCR_WORD_LEN_8;
  break;
 default:
  lcr = SC16IS7XX_LCR_WORD_LEN_8;
  termios->c_cflag &= ~CSIZE;
  termios->c_cflag |= 128;
  break;
 }


 if (termios->c_cflag & PARENB) {
  lcr |= SC16IS7XX_LCR_PARITY_BIT;
  if (!(termios->c_cflag & PARODD))
   lcr |= SC16IS7XX_LCR_EVENPARITY_BIT;
 }


 if (termios->c_cflag & CSTOPB)
  lcr |= SC16IS7XX_LCR_STOPLEN_BIT;


 port->read_status_mask = SC16IS7XX_LSR_OE_BIT;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= SC16IS7XX_LSR_PE_BIT |
       SC16IS7XX_LSR_FE_BIT;
 if (termios->c_iflag & (BRKINT | PARMRK))
  port->read_status_mask |= SC16IS7XX_LSR_BI_BIT;


 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNBRK)
  port->ignore_status_mask |= SC16IS7XX_LSR_BI_BIT;
 if (!(termios->c_cflag & CREAD))
  port->ignore_status_mask |= SC16IS7XX_LSR_BRK_ERROR_MASK;


 mutex_lock(&s->efr_lock);

 sc16is7xx_port_write(port, SC16IS7XX_LCR_REG,
        SC16IS7XX_LCR_CONF_MODE_B);


 regcache_cache_bypass(s->regmap, 1);
 sc16is7xx_port_write(port, SC16IS7XX_XON1_REG, termios->c_cc[VSTART]);
 sc16is7xx_port_write(port, SC16IS7XX_XOFF1_REG, termios->c_cc[VSTOP]);
 if (termios->c_cflag & CRTSCTS)
  flow |= SC16IS7XX_EFR_AUTOCTS_BIT |
   SC16IS7XX_EFR_AUTORTS_BIT;
 if (termios->c_iflag & IXON)
  flow |= SC16IS7XX_EFR_SWFLOW3_BIT;
 if (termios->c_iflag & IXOFF)
  flow |= SC16IS7XX_EFR_SWFLOW1_BIT;

 sc16is7xx_port_write(port, SC16IS7XX_EFR_REG, flow);
 regcache_cache_bypass(s->regmap, 0);


 sc16is7xx_port_write(port, SC16IS7XX_LCR_REG, lcr);

 mutex_unlock(&s->efr_lock);


 baud = uart_get_baud_rate(port, termios, old,
      port->uartclk / 16 / 4 / 0xffff,
      port->uartclk / 16);


 baud = sc16is7xx_set_baud(port, baud);


 uart_update_timeout(port, termios->c_cflag, baud);
}
