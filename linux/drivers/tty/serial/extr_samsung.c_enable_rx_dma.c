
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct s3c24xx_uart_port {int rx_mode; struct uart_port port; } ;


 int S3C2410_UCON ;
 int S3C24XX_RX_DMA ;
 unsigned int S3C64XX_UCON_DMASUS_EN ;
 unsigned int S3C64XX_UCON_EMPTYINT_EN ;
 int S3C64XX_UCON_RXBURST_16 ;
 unsigned int S3C64XX_UCON_RXBURST_MASK ;
 int S3C64XX_UCON_RXMODE_DMA ;
 unsigned int S3C64XX_UCON_RXMODE_MASK ;
 unsigned int S3C64XX_UCON_TIMEOUT_EN ;
 unsigned int S3C64XX_UCON_TIMEOUT_MASK ;
 int S3C64XX_UCON_TIMEOUT_SHIFT ;
 unsigned int rd_regl (struct uart_port*,int ) ;
 int wr_regl (struct uart_port*,int ,unsigned int) ;

__attribute__((used)) static void enable_rx_dma(struct s3c24xx_uart_port *ourport)
{
 struct uart_port *port = &ourport->port;
 unsigned int ucon;


 ucon = rd_regl(port, S3C2410_UCON);
 ucon &= ~(S3C64XX_UCON_RXBURST_MASK |
   S3C64XX_UCON_TIMEOUT_MASK |
   S3C64XX_UCON_EMPTYINT_EN |
   S3C64XX_UCON_DMASUS_EN |
   S3C64XX_UCON_TIMEOUT_EN |
   S3C64XX_UCON_RXMODE_MASK);
 ucon |= S3C64XX_UCON_RXBURST_16 |
   0xf << S3C64XX_UCON_TIMEOUT_SHIFT |
   S3C64XX_UCON_EMPTYINT_EN |
   S3C64XX_UCON_TIMEOUT_EN |
   S3C64XX_UCON_RXMODE_DMA;
 wr_regl(port, S3C2410_UCON, ucon);

 ourport->rx_mode = S3C24XX_RX_DMA;
}
