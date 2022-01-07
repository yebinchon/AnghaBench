
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int uartclk; } ;
struct TYPE_3__ {unsigned int fifosize; int read_status_mask; int ignore_status_mask; int status; int flags; int line; int dev; int lock; int mctrl; } ;
struct uart_omap_port {unsigned int calc_latency; unsigned int latency; unsigned int dll; unsigned int dlh; unsigned char mdr1; int fcr; unsigned char ier; unsigned char lcr; unsigned char scr; unsigned char efr; unsigned char mcr; int errata; TYPE_1__ port; int dev; int qos_work; } ;
struct ktermios {int c_cflag; int c_iflag; unsigned char* c_cc; } ;


 int BRKINT ;
 int CMSPAR ;
 int CREAD ;
 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int OMAP_UART_FCR_RX_FIFO_TRIG_MASK ;
 int OMAP_UART_FCR_TX_FIFO_TRIG_MASK ;
 unsigned char OMAP_UART_SCR_RX_TRIG_GRANU1_MASK ;
 int OMAP_UART_SW_CLR ;
 int OMAP_UART_SW_RX ;
 int OMAP_UART_SW_TX ;
 unsigned char OMAP_UART_TCR_TRIG ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int UART_DLL ;
 int UART_DLM ;
 int UART_EFR ;
 int UART_EFR_CTS ;
 unsigned char UART_EFR_ECB ;
 int UART_EFR_RTS ;
 unsigned char UART_EFR_SCD ;
 scalar_t__ UART_ENABLE_MS (TYPE_1__*,int) ;
 int UART_ERRATA_i202_MDR1_ACCESS ;
 int UART_FCR ;
 int UART_FCR6_R_TRIGGER_16 ;
 int UART_FCR6_T_TRIGGER_24 ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_FCR_R_TRIG_01 ;
 int UART_FCR_T_TRIG_01 ;
 int UART_IER ;
 unsigned char UART_IER_MSI ;
 int UART_LCR ;
 unsigned char UART_LCR_CONF_MODE_A ;
 unsigned char UART_LCR_CONF_MODE_B ;
 unsigned char UART_LCR_EPAR ;
 unsigned char UART_LCR_PARITY ;
 unsigned char UART_LCR_SPAR ;
 unsigned char UART_LCR_STOP ;
 unsigned char UART_LCR_WLEN5 ;
 unsigned char UART_LCR_WLEN6 ;
 unsigned char UART_LCR_WLEN7 ;
 unsigned char UART_LCR_WLEN8 ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int UART_LSR_THRE ;
 int UART_MCR ;
 unsigned char UART_MCR_TCRTLR ;
 unsigned char UART_MCR_XONANY ;
 int UART_OMAP_MDR1 ;
 unsigned char UART_OMAP_MDR1_13X_MODE ;
 unsigned char UART_OMAP_MDR1_16X_MODE ;
 unsigned char UART_OMAP_MDR1_DISABLE ;
 int UART_OMAP_SCR ;
 int UART_TI752_TCR ;
 int UART_XOFF1 ;
 int UART_XON1 ;
 int UPF_HARD_FLOW ;
 int UPF_SOFT_FLOW ;
 int UPSTAT_AUTOCTS ;
 int UPSTAT_AUTORTS ;
 int UPSTAT_AUTOXOFF ;
 unsigned int USEC_PER_SEC ;
 size_t VSTART ;
 size_t VSTOP ;
 int dev_dbg (int ,char*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int schedule_work (int *) ;
 unsigned char serial_in (struct uart_omap_port*,int ) ;
 int serial_omap_baud_is_mode16 (struct uart_port*,unsigned int) ;
 unsigned int serial_omap_get_divisor (struct uart_port*,unsigned int) ;
 int serial_omap_mdr1_errataset (struct uart_omap_port*,unsigned char) ;
 int serial_omap_set_mctrl (TYPE_1__*,int ) ;
 int serial_out (struct uart_omap_port*,int ,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void
serial_omap_set_termios(struct uart_port *port, struct ktermios *termios,
   struct ktermios *old)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 unsigned char cval = 0;
 unsigned long flags = 0;
 unsigned int baud, quot;

 switch (termios->c_cflag & CSIZE) {
 case 131:
  cval = UART_LCR_WLEN5;
  break;
 case 130:
  cval = UART_LCR_WLEN6;
  break;
 case 129:
  cval = UART_LCR_WLEN7;
  break;
 default:
 case 128:
  cval = UART_LCR_WLEN8;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  cval |= UART_LCR_STOP;
 if (termios->c_cflag & PARENB)
  cval |= UART_LCR_PARITY;
 if (!(termios->c_cflag & PARODD))
  cval |= UART_LCR_EPAR;
 if (termios->c_cflag & CMSPAR)
  cval |= UART_LCR_SPAR;





 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/13);
 quot = serial_omap_get_divisor(port, baud);


 up->calc_latency = (USEC_PER_SEC * up->port.fifosize) / (baud / 8);
 up->latency = up->calc_latency;
 schedule_work(&up->qos_work);

 up->dll = quot & 0xff;
 up->dlh = quot >> 8;
 up->mdr1 = UART_OMAP_MDR1_DISABLE;

 up->fcr = UART_FCR_R_TRIG_01 | UART_FCR_T_TRIG_01 |
   UART_FCR_ENABLE_FIFO;





 pm_runtime_get_sync(up->dev);
 spin_lock_irqsave(&up->port.lock, flags);




 uart_update_timeout(port, termios->c_cflag, baud);

 up->port.read_status_mask = UART_LSR_OE | UART_LSR_THRE | UART_LSR_DR;
 if (termios->c_iflag & INPCK)
  up->port.read_status_mask |= UART_LSR_FE | UART_LSR_PE;
 if (termios->c_iflag & (BRKINT | PARMRK))
  up->port.read_status_mask |= UART_LSR_BI;




 up->port.ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  up->port.ignore_status_mask |= UART_LSR_PE | UART_LSR_FE;
 if (termios->c_iflag & IGNBRK) {
  up->port.ignore_status_mask |= UART_LSR_BI;




  if (termios->c_iflag & IGNPAR)
   up->port.ignore_status_mask |= UART_LSR_OE;
 }




 if ((termios->c_cflag & CREAD) == 0)
  up->port.ignore_status_mask |= UART_LSR_DR;




 up->ier &= ~UART_IER_MSI;
 if (UART_ENABLE_MS(&up->port, termios->c_cflag))
  up->ier |= UART_IER_MSI;
 serial_out(up, UART_IER, up->ier);
 serial_out(up, UART_LCR, cval);
 up->lcr = cval;
 up->scr = 0;







 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_A);
 serial_out(up, UART_DLL, 0);
 serial_out(up, UART_DLM, 0);
 serial_out(up, UART_LCR, 0);

 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);

 up->efr = serial_in(up, UART_EFR) & ~UART_EFR_ECB;
 up->efr &= ~UART_EFR_SCD;
 serial_out(up, UART_EFR, up->efr | UART_EFR_ECB);

 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_A);
 up->mcr = serial_in(up, UART_MCR) & ~UART_MCR_TCRTLR;
 serial_out(up, UART_MCR, up->mcr | UART_MCR_TCRTLR);


 up->scr |= OMAP_UART_SCR_RX_TRIG_GRANU1_MASK;
 up->fcr &= ~OMAP_UART_FCR_RX_FIFO_TRIG_MASK;
 up->fcr &= ~OMAP_UART_FCR_TX_FIFO_TRIG_MASK;
 up->fcr |= UART_FCR6_R_TRIGGER_16 | UART_FCR6_T_TRIGGER_24 |
  UART_FCR_ENABLE_FIFO;

 serial_out(up, UART_FCR, up->fcr);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);

 serial_out(up, UART_OMAP_SCR, up->scr);


 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_A);
 serial_out(up, UART_MCR, up->mcr);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);
 serial_out(up, UART_EFR, up->efr);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_A);



 if (up->errata & UART_ERRATA_i202_MDR1_ACCESS)
  serial_omap_mdr1_errataset(up, up->mdr1);
 else
  serial_out(up, UART_OMAP_MDR1, up->mdr1);

 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);
 serial_out(up, UART_EFR, up->efr | UART_EFR_ECB);

 serial_out(up, UART_LCR, 0);
 serial_out(up, UART_IER, 0);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);

 serial_out(up, UART_DLL, up->dll);
 serial_out(up, UART_DLM, up->dlh);

 serial_out(up, UART_LCR, 0);
 serial_out(up, UART_IER, up->ier);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);

 serial_out(up, UART_EFR, up->efr);
 serial_out(up, UART_LCR, cval);

 if (!serial_omap_baud_is_mode16(port, baud))
  up->mdr1 = UART_OMAP_MDR1_13X_MODE;
 else
  up->mdr1 = UART_OMAP_MDR1_16X_MODE;

 if (up->errata & UART_ERRATA_i202_MDR1_ACCESS)
  serial_omap_mdr1_errataset(up, up->mdr1);
 else
  serial_out(up, UART_OMAP_MDR1, up->mdr1);


 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);


 serial_out(up, UART_XON1, termios->c_cc[VSTART]);
 serial_out(up, UART_XOFF1, termios->c_cc[VSTOP]);


 serial_out(up, UART_EFR, up->efr | UART_EFR_ECB);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_A);
 serial_out(up, UART_MCR, up->mcr | UART_MCR_TCRTLR);

 serial_out(up, UART_TI752_TCR, OMAP_UART_TCR_TRIG);

 up->port.status &= ~(UPSTAT_AUTOCTS | UPSTAT_AUTORTS | UPSTAT_AUTOXOFF);

 if (termios->c_cflag & CRTSCTS && up->port.flags & UPF_HARD_FLOW) {

  up->port.status |= UPSTAT_AUTOCTS | UPSTAT_AUTORTS;
  up->efr |= UART_EFR_CTS;
 } else {

  up->efr &= ~(UART_EFR_CTS | UART_EFR_RTS);
 }

 if (up->port.flags & UPF_SOFT_FLOW) {

  up->efr &= OMAP_UART_SW_CLR;






  if (termios->c_iflag & IXON)
   up->efr |= OMAP_UART_SW_RX;






  if (termios->c_iflag & IXOFF) {
   up->port.status |= UPSTAT_AUTOXOFF;
   up->efr |= OMAP_UART_SW_TX;
  }







  if (termios->c_iflag & IXANY)
   up->mcr |= UART_MCR_XONANY;
  else
   up->mcr &= ~UART_MCR_XONANY;
 }
 serial_out(up, UART_MCR, up->mcr);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);
 serial_out(up, UART_EFR, up->efr);
 serial_out(up, UART_LCR, up->lcr);

 serial_omap_set_mctrl(&up->port, up->port.mctrl);

 spin_unlock_irqrestore(&up->port.lock, flags);
 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
 dev_dbg(up->port.dev, "serial_omap_set_termios+%d\n", up->port.line);
}
