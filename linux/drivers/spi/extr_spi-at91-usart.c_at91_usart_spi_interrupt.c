
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct at91_usart_spi {int xfer_failed; int lock; } ;
typedef int irqreturn_t ;


 int IDR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int US_IR_OVRE ;
 int US_IR_RXRDY ;
 scalar_t__ at91_usart_spi_check_overrun (struct at91_usart_spi*) ;
 int at91_usart_spi_read_status (struct at91_usart_spi*) ;
 int at91_usart_spi_rx (struct at91_usart_spi*) ;
 scalar_t__ at91_usart_spi_rx_ready (struct at91_usart_spi*) ;
 int at91_usart_spi_writel (struct at91_usart_spi*,int ,int) ;
 struct at91_usart_spi* spi_master_get_devdata (struct spi_controller*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t at91_usart_spi_interrupt(int irq, void *dev_id)
{
 struct spi_controller *controller = dev_id;
 struct at91_usart_spi *aus = spi_master_get_devdata(controller);

 spin_lock(&aus->lock);
 at91_usart_spi_read_status(aus);

 if (at91_usart_spi_check_overrun(aus)) {
  aus->xfer_failed = 1;
  at91_usart_spi_writel(aus, IDR, US_IR_OVRE | US_IR_RXRDY);
  spin_unlock(&aus->lock);
  return IRQ_HANDLED;
 }

 if (at91_usart_spi_rx_ready(aus)) {
  at91_usart_spi_rx(aus);
  spin_unlock(&aus->lock);
  return IRQ_HANDLED;
 }

 spin_unlock(&aus->lock);

 return IRQ_NONE;
}
