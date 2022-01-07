
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int fifosize; size_t type; scalar_t__ iotype; int flags; int irqflags; int iobase; int name; int lock; int mctrl; scalar_t__ irq; int handle_irq; } ;
struct TYPE_5__ {int flags; int irqflags; int quirks; int mctrl; int irq; } ;
struct uart_8250_port {int tx_loadsz; scalar_t__ cur_iotype; int bugs; int ier; int * dma; scalar_t__ msr_saved_flags; scalar_t__ lsr_saved_flags; TYPE_2__ port; TYPE_1__* ops; scalar_t__ acr; scalar_t__ mcr; scalar_t__ capabilities; } ;
struct TYPE_6__ {int fifo_size; int tx_loadsz; scalar_t__ flags; } ;
struct TYPE_4__ {int (* setup_irq ) (struct uart_8250_port*) ;} ;


 int ENODEV ;
 int IRQF_SHARED ;
 size_t PORT_16850 ;
 size_t PORT_16C950 ;
 size_t PORT_ALTR_16550_F128 ;
 size_t PORT_ALTR_16550_F32 ;
 size_t PORT_ALTR_16550_F64 ;
 size_t PORT_DA830 ;
 size_t PORT_NPCM ;
 size_t PORT_XR17V35X ;
 int TIOCM_OUT1 ;
 int TIOCM_OUT2 ;
 int UART_ALTR_AFR ;
 unsigned char UART_ALTR_EN_TXFIFO_LW ;
 int UART_ALTR_TX_LOW ;
 int UART_BUG_THRE ;
 int UART_BUG_TXEN ;
 int UART_CSR ;
 int UART_DA830_PWREMU_MGMT ;
 unsigned char UART_DA830_PWREMU_MGMT_FREE ;
 unsigned char UART_DA830_PWREMU_MGMT_URRST ;
 unsigned char UART_DA830_PWREMU_MGMT_UTRST ;
 int UART_EFR ;
 unsigned char UART_EFR_ECB ;
 int UART_FCTR ;
 unsigned char UART_FCTR_RX ;
 unsigned char UART_FCTR_TRGD ;
 unsigned char UART_FCTR_TX ;
 int UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 unsigned char UART_IER_THRI ;
 int UART_IIR ;
 unsigned char UART_IIR_NO_INT ;
 int UART_LCR ;
 unsigned char UART_LCR_CONF_MODE_B ;
 unsigned char UART_LCR_WLEN8 ;
 int UART_LSR ;
 unsigned char UART_LSR_TEMT ;
 int UART_LSR_THRE ;
 int UART_MSR ;
 int UART_NPCM_TOIE ;
 int UART_NPCM_TOR ;
 int UART_RX ;
 int UART_TRG ;
 unsigned char UART_TRG_96 ;
 int UART_XR_EFR ;
 int UPF_BUGGY_UART ;
 int UPF_BUG_THRE ;
 int UPF_FOURPORT ;
 int UPF_NO_THRE_TEST ;
 int UPQ_NO_TXEN_TEST ;
 int disable_irq_nosync (scalar_t__) ;
 int enable_irq (scalar_t__) ;
 int enable_rsa (struct uart_8250_port*) ;
 int inb_p (unsigned int) ;
 int mdelay (int) ;
 int outb_p (int,unsigned int) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int pr_info_ratelimited (char*,int ) ;
 int pr_warn_ratelimited (char*,int ) ;
 int serial8250_clear_fifos (struct uart_8250_port*) ;
 int serial8250_request_dma (struct uart_8250_port*) ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 int serial8250_set_mctrl (struct uart_port*,int ) ;
 int serial8250_tx_threshold_handle_irq ;
 int serial_icr_write (struct uart_8250_port*,int ,int ) ;
 unsigned char serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,unsigned char) ;
 int serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,unsigned char) ;
 int serial_port_out_sync (struct uart_port*,int ,unsigned char) ;
 int set_io_from_upio (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_8250_port*) ;
 TYPE_3__* uart_config ;
 int udelay (int) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;
 int wait_for_xmitr (struct uart_8250_port*,int ) ;

int serial8250_do_startup(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned long flags;
 unsigned char lsr, iir;
 int retval;

 if (!port->fifosize)
  port->fifosize = uart_config[port->type].fifo_size;
 if (!up->tx_loadsz)
  up->tx_loadsz = uart_config[port->type].tx_loadsz;
 if (!up->capabilities)
  up->capabilities = uart_config[port->type].flags;
 up->mcr = 0;

 if (port->iotype != up->cur_iotype)
  set_io_from_upio(port);

 serial8250_rpm_get(up);
 if (port->type == PORT_16C950) {

  up->acr = 0;
  serial_port_out(port, UART_LCR, UART_LCR_CONF_MODE_B);
  serial_port_out(port, UART_EFR, UART_EFR_ECB);
  serial_port_out(port, UART_IER, 0);
  serial_port_out(port, UART_LCR, 0);
  serial_icr_write(up, UART_CSR, 0);
  serial_port_out(port, UART_LCR, UART_LCR_CONF_MODE_B);
  serial_port_out(port, UART_EFR, UART_EFR_ECB);
  serial_port_out(port, UART_LCR, 0);
 }

 if (port->type == PORT_DA830) {

  serial_port_out(port, UART_IER, 0);
  serial_port_out(port, UART_DA830_PWREMU_MGMT, 0);
  mdelay(10);


  serial_port_out(port, UART_DA830_PWREMU_MGMT,
    UART_DA830_PWREMU_MGMT_UTRST |
    UART_DA830_PWREMU_MGMT_URRST |
    UART_DA830_PWREMU_MGMT_FREE);
 }

 if (port->type == PORT_NPCM) {





  serial_port_out(port, UART_NPCM_TOR, UART_NPCM_TOIE | 0x20);
 }
 if (port->type == PORT_XR17V35X) {




  serial_port_out(port, UART_XR_EFR, UART_EFR_ECB);





  serial_port_out(port, UART_IER, 0);
 }





 serial8250_clear_fifos(up);




 serial_port_in(port, UART_LSR);
 serial_port_in(port, UART_RX);
 serial_port_in(port, UART_IIR);
 serial_port_in(port, UART_MSR);






 if (!(port->flags & UPF_BUGGY_UART) &&
     (serial_port_in(port, UART_LSR) == 0xff)) {
  pr_info_ratelimited("%s: LSR safety check engaged!\n", port->name);
  retval = -ENODEV;
  goto out;
 }




 if (port->type == PORT_16850) {
  unsigned char fctr;

  serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);

  fctr = serial_in(up, UART_FCTR) & ~(UART_FCTR_RX|UART_FCTR_TX);
  serial_port_out(port, UART_FCTR,
    fctr | UART_FCTR_TRGD | UART_FCTR_RX);
  serial_port_out(port, UART_TRG, UART_TRG_96);
  serial_port_out(port, UART_FCTR,
    fctr | UART_FCTR_TRGD | UART_FCTR_TX);
  serial_port_out(port, UART_TRG, UART_TRG_96);

  serial_port_out(port, UART_LCR, 0);
 }




 if (((port->type == PORT_ALTR_16550_F32) ||
      (port->type == PORT_ALTR_16550_F64) ||
      (port->type == PORT_ALTR_16550_F128)) && (port->fifosize > 1)) {

  if ((up->tx_loadsz < 2) || (up->tx_loadsz > port->fifosize)) {
   pr_err("%s TX FIFO Threshold errors, skipping\n",
          port->name);
  } else {
   serial_port_out(port, UART_ALTR_AFR,
     UART_ALTR_EN_TXFIFO_LW);
   serial_port_out(port, UART_ALTR_TX_LOW,
     port->fifosize - up->tx_loadsz);
   port->handle_irq = serial8250_tx_threshold_handle_irq;
  }
 }

 if (port->irq && !(up->port.flags & UPF_NO_THRE_TEST)) {
  unsigned char iir1;
  spin_lock_irqsave(&port->lock, flags);
  if (up->port.irqflags & IRQF_SHARED)
   disable_irq_nosync(port->irq);

  wait_for_xmitr(up, UART_LSR_THRE);
  serial_port_out_sync(port, UART_IER, UART_IER_THRI);
  udelay(1);
  iir1 = serial_port_in(port, UART_IIR);
  serial_port_out(port, UART_IER, 0);
  serial_port_out_sync(port, UART_IER, UART_IER_THRI);
  udelay(1);
  iir = serial_port_in(port, UART_IIR);
  serial_port_out(port, UART_IER, 0);

  if (port->irqflags & IRQF_SHARED)
   enable_irq(port->irq);
  spin_unlock_irqrestore(&port->lock, flags);






  if ((!(iir1 & UART_IIR_NO_INT) && (iir & UART_IIR_NO_INT)) ||
      up->port.flags & UPF_BUG_THRE) {
   up->bugs |= UART_BUG_THRE;
  }
 }

 retval = up->ops->setup_irq(up);
 if (retval)
  goto out;




 serial_port_out(port, UART_LCR, UART_LCR_WLEN8);

 spin_lock_irqsave(&port->lock, flags);
 if (up->port.flags & UPF_FOURPORT) {
  if (!up->port.irq)
   up->port.mctrl |= TIOCM_OUT1;
 } else



  if (port->irq)
   up->port.mctrl |= TIOCM_OUT2;

 serial8250_set_mctrl(port, port->mctrl);
 if (up->port.quirks & UPQ_NO_TXEN_TEST)
  goto dont_test_tx_en;





 serial_port_out(port, UART_IER, UART_IER_THRI);
 lsr = serial_port_in(port, UART_LSR);
 iir = serial_port_in(port, UART_IIR);
 serial_port_out(port, UART_IER, 0);

 if (lsr & UART_LSR_TEMT && iir & UART_IIR_NO_INT) {
  if (!(up->bugs & UART_BUG_TXEN)) {
   up->bugs |= UART_BUG_TXEN;
   pr_debug("%s - enabling bad tx status workarounds\n",
     port->name);
  }
 } else {
  up->bugs &= ~UART_BUG_TXEN;
 }

dont_test_tx_en:
 spin_unlock_irqrestore(&port->lock, flags);






 serial_port_in(port, UART_LSR);
 serial_port_in(port, UART_RX);
 serial_port_in(port, UART_IIR);
 serial_port_in(port, UART_MSR);
 up->lsr_saved_flags = 0;
 up->msr_saved_flags = 0;




 if (up->dma) {
  retval = serial8250_request_dma(up);
  if (retval) {
   pr_warn_ratelimited("%s - failed to request DMA\n",
         port->name);
   up->dma = ((void*)0);
  }
 }






 up->ier = UART_IER_RLSI | UART_IER_RDI;

 if (port->flags & UPF_FOURPORT) {
  unsigned int icp;



  icp = (port->iobase & 0xfe0) | 0x01f;
  outb_p(0x80, icp);
  inb_p(icp);
 }
 retval = 0;
out:
 serial8250_rpm_put(up);
 return retval;
}
