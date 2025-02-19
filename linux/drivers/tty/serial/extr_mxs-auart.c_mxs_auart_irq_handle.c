
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_auart_port {int mctrl_prev; int* gpio_irq; int port; scalar_t__ ms_irq_enabled; int gpios; } ;
typedef int irqreturn_t ;


 int AUART_INTR_CTSMIS ;
 int AUART_INTR_RTIS ;
 int AUART_INTR_RXIS ;
 int AUART_INTR_TXIS ;
 int AUART_STAT_CTS ;
 scalar_t__ CTS_AT_AUART () ;
 int IRQ_HANDLED ;
 int REG_INTR ;
 int REG_STAT ;
 size_t UART_GPIO_CTS ;
 size_t UART_GPIO_DCD ;
 size_t UART_GPIO_DSR ;
 size_t UART_GPIO_RI ;
 int auart_dma_enabled (struct mxs_auart_port*) ;
 int mctrl_gpio_get (int ,int*) ;
 int mxs_auart_modem_status (struct mxs_auart_port*,int ) ;
 int mxs_auart_rx_chars (struct mxs_auart_port*) ;
 int mxs_auart_tx_chars (struct mxs_auart_port*) ;
 int mxs_clr (int,struct mxs_auart_port*,int ) ;
 int mxs_read (struct mxs_auart_port*,int ) ;
 int uart_handle_cts_change (int *,int) ;

__attribute__((used)) static irqreturn_t mxs_auart_irq_handle(int irq, void *context)
{
 u32 istat;
 struct mxs_auart_port *s = context;
 u32 mctrl_temp = s->mctrl_prev;
 u32 stat = mxs_read(s, REG_STAT);

 istat = mxs_read(s, REG_INTR);


 mxs_clr(istat & (AUART_INTR_RTIS | AUART_INTR_TXIS | AUART_INTR_RXIS
  | AUART_INTR_CTSMIS), s, REG_INTR);




 if (irq == s->gpio_irq[UART_GPIO_CTS] ||
     irq == s->gpio_irq[UART_GPIO_DCD] ||
     irq == s->gpio_irq[UART_GPIO_DSR] ||
     irq == s->gpio_irq[UART_GPIO_RI])
  mxs_auart_modem_status(s,
    mctrl_gpio_get(s->gpios, &mctrl_temp));

 if (istat & AUART_INTR_CTSMIS) {
  if (CTS_AT_AUART() && s->ms_irq_enabled)
   uart_handle_cts_change(&s->port,
     stat & AUART_STAT_CTS);
  mxs_clr(AUART_INTR_CTSMIS, s, REG_INTR);
  istat &= ~AUART_INTR_CTSMIS;
 }

 if (istat & (AUART_INTR_RTIS | AUART_INTR_RXIS)) {
  if (!auart_dma_enabled(s))
   mxs_auart_rx_chars(s);
  istat &= ~(AUART_INTR_RTIS | AUART_INTR_RXIS);
 }

 if (istat & AUART_INTR_TXIS) {
  mxs_auart_tx_chars(s);
  istat &= ~AUART_INTR_TXIS;
 }

 return IRQ_HANDLED;
}
