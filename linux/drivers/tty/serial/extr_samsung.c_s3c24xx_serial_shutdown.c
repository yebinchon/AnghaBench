
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tx_enabled ;
struct uart_port {int irq; } ;
struct s3c24xx_uart_port {scalar_t__ tx_in_progress; scalar_t__ dma; scalar_t__ rx_claimed; int rx_irq; scalar_t__ tx_mode; scalar_t__ tx_claimed; int tx_irq; } ;
typedef int rx_enabled ;


 int S3C64XX_UINTM ;
 int S3C64XX_UINTP ;
 int free_irq (int ,struct s3c24xx_uart_port*) ;
 scalar_t__ s3c24xx_serial_has_interrupt_mask (struct uart_port*) ;
 int s3c24xx_serial_release_dma (struct s3c24xx_uart_port*) ;
 struct s3c24xx_uart_port* to_ourport (struct uart_port*) ;
 int wr_regl (struct uart_port*,int ,int) ;

__attribute__((used)) static void s3c24xx_serial_shutdown(struct uart_port *port)
{
 struct s3c24xx_uart_port *ourport = to_ourport(port);

 if (ourport->tx_claimed) {
  if (!s3c24xx_serial_has_interrupt_mask(port))
   free_irq(ourport->tx_irq, ourport);
  tx_enabled(port) = 0;
  ourport->tx_claimed = 0;
  ourport->tx_mode = 0;
 }

 if (ourport->rx_claimed) {
  if (!s3c24xx_serial_has_interrupt_mask(port))
   free_irq(ourport->rx_irq, ourport);
  ourport->rx_claimed = 0;
  rx_enabled(port) = 0;
 }


 if (s3c24xx_serial_has_interrupt_mask(port)) {
  free_irq(port->irq, ourport);

  wr_regl(port, S3C64XX_UINTP, 0xf);
  wr_regl(port, S3C64XX_UINTM, 0xf);
 }

 if (ourport->dma)
  s3c24xx_serial_release_dma(ourport);

 ourport->tx_in_progress = 0;
}
