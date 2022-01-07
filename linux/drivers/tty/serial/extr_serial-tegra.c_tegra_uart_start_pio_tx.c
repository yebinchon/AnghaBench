
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_uart_port {unsigned int tx_bytes; int ier_shadow; int tx_in_progress; } ;


 unsigned int TEGRA_UART_MIN_DMA ;
 int TEGRA_UART_TX_PIO ;
 int UART_IER ;
 int UART_IER_THRI ;
 int tegra_uart_write (struct tegra_uart_port*,int ,int ) ;

__attribute__((used)) static void tegra_uart_start_pio_tx(struct tegra_uart_port *tup,
  unsigned int bytes)
{
 if (bytes > TEGRA_UART_MIN_DMA)
  bytes = TEGRA_UART_MIN_DMA;

 tup->tx_in_progress = TEGRA_UART_TX_PIO;
 tup->tx_bytes = bytes;
 tup->ier_shadow |= UART_IER_THRI;
 tegra_uart_write(tup, tup->ier_shadow, UART_IER);
}
