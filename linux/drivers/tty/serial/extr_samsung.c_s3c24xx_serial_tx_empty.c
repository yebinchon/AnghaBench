
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_info {unsigned long tx_fifomask; unsigned long tx_fifofull; } ;


 int S3C2410_UFCON ;
 unsigned long S3C2410_UFCON_FIFOMODE ;
 int S3C2410_UFSTAT ;
 unsigned long rd_regl (struct uart_port*,int ) ;
 struct s3c24xx_uart_info* s3c24xx_port_to_info (struct uart_port*) ;
 unsigned int s3c24xx_serial_txempty_nofifo (struct uart_port*) ;

__attribute__((used)) static unsigned int s3c24xx_serial_tx_empty(struct uart_port *port)
{
 struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);
 unsigned long ufstat = rd_regl(port, S3C2410_UFSTAT);
 unsigned long ufcon = rd_regl(port, S3C2410_UFCON);

 if (ufcon & S3C2410_UFCON_FIFOMODE) {
  if ((ufstat & info->tx_fifomask) != 0 ||
      (ufstat & info->tx_fifofull))
   return 0;

  return 1;
 }

 return s3c24xx_serial_txempty_nofifo(port);
}
