
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_uart_port {TYPE_1__* dma; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ rx_chan; } ;


 int s3c24xx_serial_rx_chars_dma (void*) ;
 int s3c24xx_serial_rx_chars_pio (void*) ;

__attribute__((used)) static irqreturn_t s3c24xx_serial_rx_chars(int irq, void *dev_id)
{
 struct s3c24xx_uart_port *ourport = dev_id;

 if (ourport->dma && ourport->dma->rx_chan)
  return s3c24xx_serial_rx_chars_dma(dev_id);
 return s3c24xx_serial_rx_chars_pio(dev_id);
}
