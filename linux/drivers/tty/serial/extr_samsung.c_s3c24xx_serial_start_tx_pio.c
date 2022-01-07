
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_uart_port {scalar_t__ tx_mode; } ;


 scalar_t__ S3C24XX_TX_PIO ;
 int enable_tx_pio (struct s3c24xx_uart_port*) ;

__attribute__((used)) static void s3c24xx_serial_start_tx_pio(struct s3c24xx_uart_port *ourport)
{
 if (ourport->tx_mode != S3C24XX_TX_PIO)
  enable_tx_pio(ourport);
}
