
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {struct mid8250* private_data; } ;
struct uart_8250_port {int dummy; } ;
struct mid8250 {int dma_chip; } ;


 unsigned int BIT (int) ;
 int INTEL_MID_UART_FISR ;
 int IRQ_RETVAL (int) ;
 int UART_IIR ;
 int hsu_dma_do_irq (int *,int,int ) ;
 int hsu_dma_get_status (int *,int,int *) ;
 int serial8250_handle_irq (struct uart_port*,unsigned int) ;
 int serial8250_rx_dma_flush (struct uart_8250_port*) ;
 unsigned int serial_port_in (struct uart_port*,int ) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int dnv_handle_irq(struct uart_port *p)
{
 struct mid8250 *mid = p->private_data;
 struct uart_8250_port *up = up_to_u8250p(p);
 unsigned int fisr = serial_port_in(p, INTEL_MID_UART_FISR);
 u32 status;
 int ret = 0;
 int err;

 if (fisr & BIT(2)) {
  err = hsu_dma_get_status(&mid->dma_chip, 1, &status);
  if (err > 0) {
   serial8250_rx_dma_flush(up);
   ret |= 1;
  } else if (err == 0)
   ret |= hsu_dma_do_irq(&mid->dma_chip, 1, status);
 }
 if (fisr & BIT(1)) {
  err = hsu_dma_get_status(&mid->dma_chip, 0, &status);
  if (err > 0)
   ret |= 1;
  else if (err == 0)
   ret |= hsu_dma_do_irq(&mid->dma_chip, 0, status);
 }
 if (fisr & BIT(0))
  ret |= serial8250_handle_irq(p, serial_port_in(p, UART_IIR));
 return IRQ_RETVAL(ret);
}
