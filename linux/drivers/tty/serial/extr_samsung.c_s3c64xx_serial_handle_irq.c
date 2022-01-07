
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_port {struct uart_port port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int S3C64XX_UINTM_RXD_MSK ;
 unsigned int S3C64XX_UINTM_TXD_MSK ;
 int S3C64XX_UINTP ;
 unsigned int rd_regl (struct uart_port*,int ) ;
 int s3c24xx_serial_rx_chars (int,void*) ;
 int s3c24xx_serial_tx_chars (int,void*) ;
 int wr_regl (struct uart_port*,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t s3c64xx_serial_handle_irq(int irq, void *id)
{
 struct s3c24xx_uart_port *ourport = id;
 struct uart_port *port = &ourport->port;
 unsigned int pend = rd_regl(port, S3C64XX_UINTP);
 irqreturn_t ret = IRQ_HANDLED;

 if (pend & S3C64XX_UINTM_RXD_MSK) {
  ret = s3c24xx_serial_rx_chars(irq, id);
  wr_regl(port, S3C64XX_UINTP, S3C64XX_UINTM_RXD_MSK);
 }
 if (pend & S3C64XX_UINTM_TXD_MSK) {
  ret = s3c24xx_serial_tx_chars(irq, id);
  wr_regl(port, S3C64XX_UINTP, S3C64XX_UINTM_TXD_MSK);
 }
 return ret;
}
