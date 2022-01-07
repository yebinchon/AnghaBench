
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int tcflag_t ;
struct serial_rs485 {int flags; int delay_rts_after_send; int delay_rts_before_send; } ;
struct uart_port {int uartclk; scalar_t__ membase; int status; int read_status_mask; int ignore_status_mask; int lock; int dev; struct serial_rs485 rs485; } ;
struct stm32_usart_offsets {scalar_t__ cr1; scalar_t__ rqr; scalar_t__ cr3; scalar_t__ rtor; scalar_t__ brr; scalar_t__ cr2; } ;
struct stm32_usart_config {unsigned int uart_enable_bit; scalar_t__ has_7bits_data; } ;
struct stm32_port {int rdr_mask; int cr1_irq; int cr3_irq; scalar_t__ rx_ch; scalar_t__ fifoen; int hw_flow_control; TYPE_1__* info; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct TYPE_2__ {struct stm32_usart_config cfg; struct stm32_usart_offsets ofs; } ;


 int BIT (unsigned int) ;
 int BRKINT ;
 int CREAD ;
 int CRTSCTS ;
 int CSTOPB ;
 int DIV_ROUND_CLOSEST (int,unsigned int) ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int SER_RS485_ENABLED ;
 int SER_RS485_RTS_AFTER_SEND ;
 int SER_RS485_RTS_ON_SEND ;
 scalar_t__ UNDEF_REG ;
 int UPSTAT_AUTOCTS ;
 int UPSTAT_AUTORTS ;
 int USART_BRR_DIV_M_SHIFT ;
 int USART_CR1_DEAT_MASK ;
 int USART_CR1_DEDT_MASK ;
 int USART_CR1_FIFOEN ;
 int USART_CR1_M0 ;
 int USART_CR1_M1 ;
 int USART_CR1_OVER8 ;
 int USART_CR1_PCE ;
 int USART_CR1_PS ;
 int USART_CR1_RE ;
 int USART_CR1_RTOIE ;
 int USART_CR1_TE ;
 int USART_CR2_RTOEN ;
 int USART_CR2_STOP_2B ;
 int USART_CR3_CTSE ;
 int USART_CR3_DEM ;
 int USART_CR3_DEP ;
 int USART_CR3_DMAR ;
 int USART_CR3_RTSE ;
 int USART_CR3_RXFTCFG_MASK ;
 int USART_CR3_RXFTIE ;
 int USART_CR3_TXFTCFG_MASK ;
 int USART_CR3_TXFTIE ;
 int USART_RQR_RXFRQ ;
 int USART_RQR_TXFRQ ;
 int USART_SR_DUMMY_RX ;
 int USART_SR_FE ;
 int USART_SR_ORE ;
 int USART_SR_PE ;
 int dev_dbg (int ,char*,unsigned int) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_clr_bits (struct uart_port*,scalar_t__,int) ;
 int stm32_config_reg_rs485 (int*,int*,int ,int ,unsigned int) ;
 unsigned int stm32_get_databits (struct ktermios*) ;
 int stm32_set_bits (struct uart_port*,scalar_t__,int) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm32_set_termios(struct uart_port *port, struct ktermios *termios,
       struct ktermios *old)
{
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 struct stm32_usart_config *cfg = &stm32_port->info->cfg;
 struct serial_rs485 *rs485conf = &port->rs485;
 unsigned int baud, bits;
 u32 usartdiv, mantissa, fraction, oversampling;
 tcflag_t cflag = termios->c_cflag;
 u32 cr1, cr2, cr3;
 unsigned long flags;

 if (!stm32_port->hw_flow_control)
  cflag &= ~CRTSCTS;

 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk / 8);

 spin_lock_irqsave(&port->lock, flags);


 writel_relaxed(0, port->membase + ofs->cr1);


 if (ofs->rqr != UNDEF_REG)
  stm32_set_bits(port, ofs->rqr,
          USART_RQR_TXFRQ | USART_RQR_RXFRQ);

 cr1 = USART_CR1_TE | USART_CR1_RE;
 if (stm32_port->fifoen)
  cr1 |= USART_CR1_FIFOEN;
 cr2 = 0;
 cr3 = readl_relaxed(port->membase + ofs->cr3);
 cr3 &= USART_CR3_TXFTIE | USART_CR3_RXFTCFG_MASK | USART_CR3_RXFTIE
  | USART_CR3_TXFTCFG_MASK;

 if (cflag & CSTOPB)
  cr2 |= USART_CR2_STOP_2B;

 bits = stm32_get_databits(termios);
 stm32_port->rdr_mask = (BIT(bits) - 1);

 if (cflag & PARENB) {
  bits++;
  cr1 |= USART_CR1_PCE;
 }
 if (bits == 9)
  cr1 |= USART_CR1_M0;
 else if ((bits == 7) && cfg->has_7bits_data)
  cr1 |= USART_CR1_M1;
 else if (bits != 8)
  dev_dbg(port->dev, "Unsupported data bits config: %u bits\n"
   , bits);

 if (ofs->rtor != UNDEF_REG && (stm32_port->rx_ch ||
           stm32_port->fifoen)) {
  if (cflag & CSTOPB)
   bits = bits + 3;
  else
   bits = bits + 2;


  stm32_port->cr1_irq = USART_CR1_RTOIE;
  writel_relaxed(bits, port->membase + ofs->rtor);
  cr2 |= USART_CR2_RTOEN;

  if (!stm32_port->rx_ch)
   stm32_port->cr3_irq = USART_CR3_RXFTIE;
 }

 cr1 |= stm32_port->cr1_irq;
 cr3 |= stm32_port->cr3_irq;

 if (cflag & PARODD)
  cr1 |= USART_CR1_PS;

 port->status &= ~(UPSTAT_AUTOCTS | UPSTAT_AUTORTS);
 if (cflag & CRTSCTS) {
  port->status |= UPSTAT_AUTOCTS | UPSTAT_AUTORTS;
  cr3 |= USART_CR3_CTSE | USART_CR3_RTSE;
 }

 usartdiv = DIV_ROUND_CLOSEST(port->uartclk, baud);







 if (usartdiv < 16) {
  oversampling = 8;
  cr1 |= USART_CR1_OVER8;
  stm32_set_bits(port, ofs->cr1, USART_CR1_OVER8);
 } else {
  oversampling = 16;
  cr1 &= ~USART_CR1_OVER8;
  stm32_clr_bits(port, ofs->cr1, USART_CR1_OVER8);
 }

 mantissa = (usartdiv / oversampling) << USART_BRR_DIV_M_SHIFT;
 fraction = usartdiv % oversampling;
 writel_relaxed(mantissa | fraction, port->membase + ofs->brr);

 uart_update_timeout(port, cflag, baud);

 port->read_status_mask = USART_SR_ORE;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= USART_SR_PE | USART_SR_FE;
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  port->read_status_mask |= USART_SR_FE;


 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask = USART_SR_PE | USART_SR_FE;
 if (termios->c_iflag & IGNBRK) {
  port->ignore_status_mask |= USART_SR_FE;




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= USART_SR_ORE;
 }


 if ((termios->c_cflag & CREAD) == 0)
  port->ignore_status_mask |= USART_SR_DUMMY_RX;

 if (stm32_port->rx_ch)
  cr3 |= USART_CR3_DMAR;

 if (rs485conf->flags & SER_RS485_ENABLED) {
  stm32_config_reg_rs485(&cr1, &cr3,
           rs485conf->delay_rts_before_send,
           rs485conf->delay_rts_after_send, baud);
  if (rs485conf->flags & SER_RS485_RTS_ON_SEND) {
   cr3 &= ~USART_CR3_DEP;
   rs485conf->flags &= ~SER_RS485_RTS_AFTER_SEND;
  } else {
   cr3 |= USART_CR3_DEP;
   rs485conf->flags |= SER_RS485_RTS_AFTER_SEND;
  }

 } else {
  cr3 &= ~(USART_CR3_DEM | USART_CR3_DEP);
  cr1 &= ~(USART_CR1_DEDT_MASK | USART_CR1_DEAT_MASK);
 }

 writel_relaxed(cr3, port->membase + ofs->cr3);
 writel_relaxed(cr2, port->membase + ofs->cr2);
 writel_relaxed(cr1, port->membase + ofs->cr1);

 stm32_set_bits(port, ofs->cr1, BIT(cfg->uart_enable_bit));
 spin_unlock_irqrestore(&port->lock, flags);
}
