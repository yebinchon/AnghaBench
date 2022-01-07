
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifosize; } ;
struct s3c24xx_uart_port {TYPE_1__ port; struct s3c24xx_uart_info* info; } ;
struct s3c24xx_uart_info {unsigned long rx_fifofull; unsigned long rx_fifomask; unsigned long rx_fifoshift; } ;



__attribute__((used)) static int s3c24xx_serial_rx_fifocnt(struct s3c24xx_uart_port *ourport,
         unsigned long ufstat)
{
 struct s3c24xx_uart_info *info = ourport->info;

 if (ufstat & info->rx_fifofull)
  return ourport->port.fifosize;

 return (ufstat & info->rx_fifomask) >> info->rx_fifoshift;
}
