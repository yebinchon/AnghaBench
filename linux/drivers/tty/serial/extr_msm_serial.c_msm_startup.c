
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int line; int fifosize; int irq; } ;
struct TYPE_2__ {int mapbase; } ;
struct msm_port {int clk; int pclk; scalar_t__ is_uartdm; int name; TYPE_1__ uart; } ;


 int IRQF_TRIGGER_HIGH ;
 unsigned int UART_DM_MR1_AUTO_RFR_LEVEL1 ;
 int UART_MR1 ;
 unsigned int UART_MR1_AUTO_RFR_LEVEL0 ;
 unsigned int UART_MR1_AUTO_RFR_LEVEL1 ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ likely (int) ;
 int msm_init_clock (struct uart_port*) ;
 unsigned int msm_read (struct uart_port*,int ) ;
 int msm_release_dma (struct msm_port*) ;
 int msm_request_rx_dma (struct msm_port*,int ) ;
 int msm_request_tx_dma (struct msm_port*,int ) ;
 int msm_uart_irq ;
 int msm_write (struct uart_port*,unsigned int,int ) ;
 int request_irq (int ,int ,int ,int ,struct uart_port*) ;
 int snprintf (int ,int,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int msm_startup(struct uart_port *port)
{
 struct msm_port *msm_port = UART_TO_MSM(port);
 unsigned int data, rfr_level, mask;
 int ret;

 snprintf(msm_port->name, sizeof(msm_port->name),
   "msm_serial%d", port->line);

 msm_init_clock(port);

 if (likely(port->fifosize > 12))
  rfr_level = port->fifosize - 12;
 else
  rfr_level = port->fifosize;


 data = msm_read(port, UART_MR1);

 if (msm_port->is_uartdm)
  mask = UART_DM_MR1_AUTO_RFR_LEVEL1;
 else
  mask = UART_MR1_AUTO_RFR_LEVEL1;

 data &= ~mask;
 data &= ~UART_MR1_AUTO_RFR_LEVEL0;
 data |= mask & (rfr_level << 2);
 data |= UART_MR1_AUTO_RFR_LEVEL0 & rfr_level;
 msm_write(port, data, UART_MR1);

 if (msm_port->is_uartdm) {
  msm_request_tx_dma(msm_port, msm_port->uart.mapbase);
  msm_request_rx_dma(msm_port, msm_port->uart.mapbase);
 }

 ret = request_irq(port->irq, msm_uart_irq, IRQF_TRIGGER_HIGH,
     msm_port->name, port);
 if (unlikely(ret))
  goto err_irq;

 return 0;

err_irq:
 if (msm_port->is_uartdm)
  msm_release_dma(msm_port);

 clk_disable_unprepare(msm_port->pclk);
 clk_disable_unprepare(msm_port->clk);

 return ret;
}
