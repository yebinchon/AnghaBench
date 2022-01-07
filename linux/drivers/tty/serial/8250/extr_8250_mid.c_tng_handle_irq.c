
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {struct mid8250* private_data; } ;
struct uart_8250_port {int dummy; } ;
struct mid8250 {int dma_index; int dma_dev; } ;
struct hsu_dma_chip {int dummy; } ;


 int IRQ_RETVAL (int) ;
 int UART_IIR ;
 int hsu_dma_do_irq (struct hsu_dma_chip*,int,int ) ;
 int hsu_dma_get_status (struct hsu_dma_chip*,int,int *) ;
 struct hsu_dma_chip* pci_get_drvdata (int ) ;
 int serial8250_handle_irq (struct uart_port*,int ) ;
 int serial8250_rx_dma_flush (struct uart_8250_port*) ;
 int serial_port_in (struct uart_port*,int ) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int tng_handle_irq(struct uart_port *p)
{
 struct mid8250 *mid = p->private_data;
 struct uart_8250_port *up = up_to_u8250p(p);
 struct hsu_dma_chip *chip;
 u32 status;
 int ret = 0;
 int err;

 chip = pci_get_drvdata(mid->dma_dev);


 err = hsu_dma_get_status(chip, mid->dma_index * 2 + 1, &status);
 if (err > 0) {
  serial8250_rx_dma_flush(up);
  ret |= 1;
 } else if (err == 0)
  ret |= hsu_dma_do_irq(chip, mid->dma_index * 2 + 1, status);


 err = hsu_dma_get_status(chip, mid->dma_index * 2, &status);
 if (err > 0)
  ret |= 1;
 else if (err == 0)
  ret |= hsu_dma_do_irq(chip, mid->dma_index * 2, status);


 ret |= serial8250_handle_irq(p, serial_port_in(p, UART_IIR));
 return IRQ_RETVAL(ret);
}
