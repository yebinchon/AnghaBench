
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;
struct s3c24xx_uart_port {void* tx_mode; int tx_irq; void* tx_in_progress; struct uart_port port; } ;


 int S3C2410_UCON ;
 int S3C2410_UFCON ;
 void* S3C24XX_TX_PIO ;
 int S3C64XX_UCON_TXMODE_CPU ;
 int S3C64XX_UCON_TXMODE_MASK ;
 int S3C64XX_UINTM ;
 int S3C64XX_UINTM_TXD ;
 int enable_irq (int ) ;
 int rd_regl (struct uart_port*,int ) ;
 int s3c24xx_clear_bit (struct uart_port*,int ,int ) ;
 scalar_t__ s3c24xx_serial_has_interrupt_mask (struct uart_port*) ;
 int wr_regl (struct uart_port*,int ,int ) ;

__attribute__((used)) static void enable_tx_pio(struct s3c24xx_uart_port *ourport)
{
 struct uart_port *port = &ourport->port;
 u32 ucon, ufcon;


 ourport->tx_in_progress = S3C24XX_TX_PIO;
 ufcon = rd_regl(port, S3C2410_UFCON);
 wr_regl(port, S3C2410_UFCON, ufcon);


 ucon = rd_regl(port, S3C2410_UCON);
 ucon &= ~(S3C64XX_UCON_TXMODE_MASK);
 ucon |= S3C64XX_UCON_TXMODE_CPU;
 wr_regl(port, S3C2410_UCON, ucon);


 if (s3c24xx_serial_has_interrupt_mask(port))
  s3c24xx_clear_bit(port, S3C64XX_UINTM_TXD,
      S3C64XX_UINTM);
 else
  enable_irq(ourport->tx_irq);

 ourport->tx_mode = S3C24XX_TX_PIO;
}
