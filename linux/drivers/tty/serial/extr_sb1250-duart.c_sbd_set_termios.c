
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int read_status_mask; int ignore_status_mask; int lock; } ;
struct sbd_port {scalar_t__ tx_stopped; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CREAD ;
 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 unsigned int M_DUART_BITS_PER_CHAR ;
 unsigned int M_DUART_CLK_COUNTER ;
 unsigned int M_DUART_CTS_CHNG_ENA ;
 int M_DUART_FRM_ERR ;
 int M_DUART_OVRUN_ERR ;
 int M_DUART_PARITY_ERR ;
 unsigned int M_DUART_PARITY_MODE ;
 unsigned int M_DUART_PARITY_TYPE_EVEN ;
 unsigned int M_DUART_PARITY_TYPE_ODD ;
 int M_DUART_RCVD_BRK ;
 unsigned int M_DUART_RX_DIS ;
 unsigned int M_DUART_RX_EN ;
 unsigned int M_DUART_STOP_BIT_LEN_1 ;
 unsigned int M_DUART_STOP_BIT_LEN_2 ;
 unsigned int M_DUART_TX_DIS ;
 unsigned int M_DUART_TX_EN ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int R_DUART_AUXCTL_X ;
 int R_DUART_CLK_SEL ;
 int R_DUART_CMD ;
 int R_DUART_MODE_REG_1 ;
 int R_DUART_MODE_REG_2 ;
 unsigned int V_DUART_BAUD_RATE (unsigned int) ;
 unsigned int V_DUART_BITS_PER_CHAR_7 ;
 unsigned int V_DUART_BITS_PER_CHAR_8 ;
 unsigned int V_DUART_PARITY_MODE_ADD ;
 unsigned int V_DUART_PARITY_MODE_NONE ;
 unsigned int read_sbdchn (struct sbd_port*,int ) ;
 int sbd_line_drain (struct sbd_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sbd_port* to_sport (struct uart_port*) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 int write_sbdchn (struct sbd_port*,int ,unsigned int) ;

__attribute__((used)) static void sbd_set_termios(struct uart_port *uport, struct ktermios *termios,
       struct ktermios *old_termios)
{
 struct sbd_port *sport = to_sport(uport);
 unsigned int mode1 = 0, mode2 = 0, aux = 0;
 unsigned int mode1mask = 0, mode2mask = 0, auxmask = 0;
 unsigned int oldmode1, oldmode2, oldaux;
 unsigned int baud, brg;
 unsigned int command;

 mode1mask |= ~(M_DUART_PARITY_MODE | M_DUART_PARITY_TYPE_ODD |
         M_DUART_BITS_PER_CHAR);
 mode2mask |= ~M_DUART_STOP_BIT_LEN_2;
 auxmask |= ~M_DUART_CTS_CHNG_ENA;


 switch (termios->c_cflag & CSIZE) {
 case 131:
 case 130:

  mode1mask |= M_DUART_PARITY_MODE;
  break;
 case 129:
  mode1 |= V_DUART_BITS_PER_CHAR_7;
  break;
 case 128:
 default:
  mode1 |= V_DUART_BITS_PER_CHAR_8;
  break;
 }


 if (termios->c_cflag & CSTOPB)
  mode2 |= M_DUART_STOP_BIT_LEN_2;
 else
  mode2 |= M_DUART_STOP_BIT_LEN_1;
 if (termios->c_cflag & PARENB)
  mode1 |= V_DUART_PARITY_MODE_ADD;
 else
  mode1 |= V_DUART_PARITY_MODE_NONE;
 if (termios->c_cflag & PARODD)
  mode1 |= M_DUART_PARITY_TYPE_ODD;
 else
  mode1 |= M_DUART_PARITY_TYPE_EVEN;

 baud = uart_get_baud_rate(uport, termios, old_termios, 1200, 5000000);
 brg = V_DUART_BAUD_RATE(baud);

 if (brg > M_DUART_CLK_COUNTER)
  brg = M_DUART_CLK_COUNTER;

 uart_update_timeout(uport, termios->c_cflag, baud);

 uport->read_status_mask = M_DUART_OVRUN_ERR;
 if (termios->c_iflag & INPCK)
  uport->read_status_mask |= M_DUART_FRM_ERR |
        M_DUART_PARITY_ERR;
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  uport->read_status_mask |= M_DUART_RCVD_BRK;

 uport->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  uport->ignore_status_mask |= M_DUART_FRM_ERR |
          M_DUART_PARITY_ERR;
 if (termios->c_iflag & IGNBRK) {
  uport->ignore_status_mask |= M_DUART_RCVD_BRK;
  if (termios->c_iflag & IGNPAR)
   uport->ignore_status_mask |= M_DUART_OVRUN_ERR;
 }

 if (termios->c_cflag & CREAD)
  command = M_DUART_RX_EN;
 else
  command = M_DUART_RX_DIS;

 if (termios->c_cflag & CRTSCTS)
  aux |= M_DUART_CTS_CHNG_ENA;
 else
  aux &= ~M_DUART_CTS_CHNG_ENA;

 spin_lock(&uport->lock);

 if (sport->tx_stopped)
  command |= M_DUART_TX_DIS;
 else
  command |= M_DUART_TX_EN;

 oldmode1 = read_sbdchn(sport, R_DUART_MODE_REG_1) & mode1mask;
 oldmode2 = read_sbdchn(sport, R_DUART_MODE_REG_2) & mode2mask;
 oldaux = read_sbdchn(sport, R_DUART_AUXCTL_X) & auxmask;

 if (!sport->tx_stopped)
  sbd_line_drain(sport);
 write_sbdchn(sport, R_DUART_CMD, M_DUART_TX_DIS | M_DUART_RX_DIS);

 write_sbdchn(sport, R_DUART_MODE_REG_1, mode1 | oldmode1);
 write_sbdchn(sport, R_DUART_MODE_REG_2, mode2 | oldmode2);
 write_sbdchn(sport, R_DUART_CLK_SEL, brg);
 write_sbdchn(sport, R_DUART_AUXCTL_X, aux | oldaux);

 write_sbdchn(sport, R_DUART_CMD, command);

 spin_unlock(&uport->lock);
}
