
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int read_status_mask; int lock; scalar_t__ membase; int ignore_status_mask; } ;
struct ktermios {unsigned int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CMSPAR ;
 unsigned int CS7 ;
 unsigned int CS8 ;
 unsigned int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 scalar_t__ LINCR1 ;
 unsigned long LINFLEXD_LINCR1_INIT ;
 unsigned long LINFLEXD_LINSR_LINS_INITMODE ;
 unsigned long LINFLEXD_LINSR_LINS_MASK ;
 unsigned long LINFLEXD_UARTCR_PC0 ;
 unsigned long LINFLEXD_UARTCR_PC1 ;
 unsigned long LINFLEXD_UARTCR_PCE ;
 unsigned long LINFLEXD_UARTCR_WL0 ;
 unsigned long LINFLEXD_UARTCR_WL1 ;
 int LINFLEXD_UARTSR_BOF ;
 int LINFLEXD_UARTSR_FEF ;
 int LINFLEXD_UARTSR_PE ;
 int LINFLEXD_UARTSR_PE0 ;
 int LINFLEXD_UARTSR_PE1 ;
 int LINFLEXD_UARTSR_PE2 ;
 int LINFLEXD_UARTSR_PE3 ;
 scalar_t__ LINSR ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 scalar_t__ UARTCR ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void
linflex_set_termios(struct uart_port *port, struct ktermios *termios,
      struct ktermios *old)
{
 unsigned long flags;
 unsigned long cr, old_cr, cr1;
 unsigned int old_csize = old ? old->c_cflag & CSIZE : CS8;

 cr = readl(port->membase + UARTCR);
 old_cr = cr;


 cr1 = readl(port->membase + LINCR1);
 cr1 |= LINFLEXD_LINCR1_INIT;
 writel(cr1, port->membase + LINCR1);


 while ((readl(port->membase + LINSR)
  & LINFLEXD_LINSR_LINS_MASK)
  != LINFLEXD_LINSR_LINS_INITMODE)
  ;
 while ((termios->c_cflag & CSIZE) != CS8 &&
        (termios->c_cflag & CSIZE) != CS7) {
  termios->c_cflag &= ~CSIZE;
  termios->c_cflag |= old_csize;
  old_csize = CS8;
 }

 if ((termios->c_cflag & CSIZE) == CS7) {

  cr = old_cr & ~LINFLEXD_UARTCR_WL1 & ~LINFLEXD_UARTCR_WL0;
 }

 if ((termios->c_cflag & CSIZE) == CS8) {

  cr = (old_cr | LINFLEXD_UARTCR_WL0) & ~LINFLEXD_UARTCR_WL1;
 }

 if (termios->c_cflag & CMSPAR) {
  if ((termios->c_cflag & CSIZE) != CS8) {
   termios->c_cflag &= ~CSIZE;
   termios->c_cflag |= CS8;
  }

  cr |= LINFLEXD_UARTCR_WL0;
 }

 if (termios->c_cflag & CSTOPB)
  termios->c_cflag &= ~CSTOPB;


 if ((termios->c_cflag & CSIZE) == CS7)
  termios->c_cflag |= PARENB;

 if ((termios->c_cflag & PARENB)) {
  cr |= LINFLEXD_UARTCR_PCE;
  if (termios->c_cflag & PARODD)
   cr = (cr | LINFLEXD_UARTCR_PC0) &
        (~LINFLEXD_UARTCR_PC1);
  else
   cr = cr & (~LINFLEXD_UARTCR_PC1 &
       ~LINFLEXD_UARTCR_PC0);
 } else {
  cr &= ~LINFLEXD_UARTCR_PCE;
 }

 spin_lock_irqsave(&port->lock, flags);

 port->read_status_mask = 0;

 if (termios->c_iflag & INPCK)
  port->read_status_mask |= (LINFLEXD_UARTSR_FEF |
       LINFLEXD_UARTSR_PE0 |
       LINFLEXD_UARTSR_PE1 |
       LINFLEXD_UARTSR_PE2 |
       LINFLEXD_UARTSR_PE3);
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  port->read_status_mask |= LINFLEXD_UARTSR_FEF;


 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= LINFLEXD_UARTSR_PE;
 if (termios->c_iflag & IGNBRK) {
  port->ignore_status_mask |= LINFLEXD_UARTSR_PE;




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= LINFLEXD_UARTSR_BOF;
 }

 writel(cr, port->membase + UARTCR);

 cr1 &= ~(LINFLEXD_LINCR1_INIT);

 writel(cr1, port->membase + LINCR1);

 spin_unlock_irqrestore(&port->lock, flags);
}
