
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int dev; } ;
struct tegra_uart_port {int use_tx_pio; int use_rx_pio; } ;


 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 int request_irq (int,int ,int ,int ,struct tegra_uart_port*) ;
 int tegra_uart_dma_channel_allocate (struct tegra_uart_port*,int) ;
 int tegra_uart_dma_channel_free (struct tegra_uart_port*,int) ;
 int tegra_uart_hw_init (struct tegra_uart_port*) ;
 int tegra_uart_isr ;
 struct tegra_uart_port* to_tegra_uport (struct uart_port*) ;

__attribute__((used)) static int tegra_uart_startup(struct uart_port *u)
{
 struct tegra_uart_port *tup = to_tegra_uport(u);
 int ret;

 if (!tup->use_tx_pio) {
  ret = tegra_uart_dma_channel_allocate(tup, 0);
  if (ret < 0) {
   dev_err(u->dev, "Tx Dma allocation failed, err = %d\n",
    ret);
   return ret;
  }
 }

 if (!tup->use_rx_pio) {
  ret = tegra_uart_dma_channel_allocate(tup, 1);
  if (ret < 0) {
   dev_err(u->dev, "Rx Dma allocation failed, err = %d\n",
    ret);
   goto fail_rx_dma;
  }
 }

 ret = tegra_uart_hw_init(tup);
 if (ret < 0) {
  dev_err(u->dev, "Uart HW init failed, err = %d\n", ret);
  goto fail_hw_init;
 }

 ret = request_irq(u->irq, tegra_uart_isr, 0,
    dev_name(u->dev), tup);
 if (ret < 0) {
  dev_err(u->dev, "Failed to register ISR for IRQ %d\n", u->irq);
  goto fail_hw_init;
 }
 return 0;

fail_hw_init:
 if (!tup->use_rx_pio)
  tegra_uart_dma_channel_free(tup, 1);
fail_rx_dma:
 if (!tup->use_tx_pio)
  tegra_uart_dma_channel_free(tup, 0);
 return ret;
}
