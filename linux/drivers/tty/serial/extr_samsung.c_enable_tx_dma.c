
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;
struct s3c24xx_uart_port {int tx_mode; int tx_irq; struct uart_port port; } ;


 int S3C2410_UCON ;
 int S3C24XX_TX_DMA ;
 int S3C64XX_UCON_TXBURST_1 ;
 int S3C64XX_UCON_TXBURST_16 ;
 int S3C64XX_UCON_TXBURST_MASK ;
 int S3C64XX_UCON_TXMODE_DMA ;
 int S3C64XX_UCON_TXMODE_MASK ;
 int S3C64XX_UINTM ;
 int S3C64XX_UINTM_TXD ;
 int disable_irq_nosync (int ) ;
 int dma_get_cache_alignment () ;
 int rd_regl (struct uart_port*,int ) ;
 scalar_t__ s3c24xx_serial_has_interrupt_mask (struct uart_port*) ;
 int s3c24xx_set_bit (struct uart_port*,int ,int ) ;
 int wr_regl (struct uart_port*,int ,int) ;

__attribute__((used)) static void enable_tx_dma(struct s3c24xx_uart_port *ourport)
{
 struct uart_port *port = &ourport->port;
 u32 ucon;


 if (s3c24xx_serial_has_interrupt_mask(port))
  s3c24xx_set_bit(port, S3C64XX_UINTM_TXD, S3C64XX_UINTM);
 else
  disable_irq_nosync(ourport->tx_irq);


 ucon = rd_regl(port, S3C2410_UCON);
 ucon &= ~(S3C64XX_UCON_TXBURST_MASK | S3C64XX_UCON_TXMODE_MASK);
 ucon |= (dma_get_cache_alignment() >= 16) ?
  S3C64XX_UCON_TXBURST_16 : S3C64XX_UCON_TXBURST_1;
 ucon |= S3C64XX_UCON_TXMODE_DMA;
 wr_regl(port, S3C2410_UCON, ucon);

 ourport->tx_mode = S3C24XX_TX_DMA;
}
