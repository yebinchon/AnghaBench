
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; int irq; struct omap8250_priv* private_data; } ;
struct uart_8250_port {int ier; TYPE_1__* dma; int capabilities; scalar_t__ msr_saved_flags; scalar_t__ lsr_saved_flags; scalar_t__ mcr; } ;
struct omap8250_priv {int wer; int habit; scalar_t__ wakeirq; } ;
struct TYPE_2__ {int (* rx_dma ) (struct uart_8250_port*) ;} ;


 int IRQF_SHARED ;
 int OMAP_UART_TX_WAKEUP_EN ;
 int OMAP_UART_WER_HAS_TX_WAKEUP ;
 int OMAP_UART_WER_MOD_WKUP ;
 int UART_CAP_RPM ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_LCR ;
 int UART_LCR_WLEN8 ;
 int UART_OMAP_WER ;
 int dev_name (int ) ;
 int dev_pm_clear_wake_irq (int ) ;
 int dev_pm_set_dedicated_wake_irq (int ,scalar_t__) ;
 int dev_warn_ratelimited (int ,char*) ;
 int omap8250_irq ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int request_irq (int ,int ,int ,int ,struct uart_port*) ;
 int serial8250_request_dma (struct uart_8250_port*) ;
 int serial_out (struct uart_8250_port*,int ,int) ;
 int stub1 (struct uart_8250_port*) ;
 scalar_t__ uart_console (struct uart_port*) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int omap_8250_startup(struct uart_port *port)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 struct omap8250_priv *priv = port->private_data;
 int ret;

 if (priv->wakeirq) {
  ret = dev_pm_set_dedicated_wake_irq(port->dev, priv->wakeirq);
  if (ret)
   return ret;
 }

 pm_runtime_get_sync(port->dev);

 up->mcr = 0;
 serial_out(up, UART_FCR, UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);

 serial_out(up, UART_LCR, UART_LCR_WLEN8);

 up->lsr_saved_flags = 0;
 up->msr_saved_flags = 0;


 if (uart_console(port))
  up->dma = ((void*)0);

 if (up->dma) {
  ret = serial8250_request_dma(up);
  if (ret) {
   dev_warn_ratelimited(port->dev,
          "failed to request DMA\n");
   up->dma = ((void*)0);
  }
 }

 ret = request_irq(port->irq, omap8250_irq, IRQF_SHARED,
     dev_name(port->dev), port);
 if (ret < 0)
  goto err;

 up->ier = UART_IER_RLSI | UART_IER_RDI;
 serial_out(up, UART_IER, up->ier);






 priv->wer = OMAP_UART_WER_MOD_WKUP;
 if (priv->habit & OMAP_UART_WER_HAS_TX_WAKEUP)
  priv->wer |= OMAP_UART_TX_WAKEUP_EN;
 serial_out(up, UART_OMAP_WER, priv->wer);

 if (up->dma)
  up->dma->rx_dma(up);

 pm_runtime_mark_last_busy(port->dev);
 pm_runtime_put_autosuspend(port->dev);
 return 0;
err:
 pm_runtime_mark_last_busy(port->dev);
 pm_runtime_put_autosuspend(port->dev);
 dev_pm_clear_wake_irq(port->dev);
 return ret;
}
