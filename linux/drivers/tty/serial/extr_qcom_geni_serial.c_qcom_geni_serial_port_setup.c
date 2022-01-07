
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {int dev; scalar_t__ membase; } ;
struct qcom_geni_serial_port {int tx_bytes_pw; int rx_bytes_pw; int setup; int rx_fifo; scalar_t__ rx_fifo_depth; int se; } ;


 int BITS_PER_BYTE ;
 int CONSOLE_RX_BYTES_PW ;
 scalar_t__ DEFAULT_BITS_PER_CHAR ;
 int ENOMEM ;
 int ENXIO ;
 int GENI_SE_FIFO ;
 scalar_t__ GENI_SE_UART ;
 int GFP_KERNEL ;
 scalar_t__ SE_UART_RX_STALE_CNT ;
 scalar_t__ STALE_TIMEOUT ;
 int UART_RX_WM ;
 int dev_err (int ,char*,scalar_t__) ;
 int devm_kcalloc (int ,scalar_t__,int,int ) ;
 int geni_se_config_packing (int *,int ,int,int,int,int) ;
 int geni_se_init (int *,int ,scalar_t__) ;
 scalar_t__ geni_se_read_proto (int *) ;
 int geni_se_select_mode (int *,int ) ;
 int get_tx_fifo_size (struct qcom_geni_serial_port*) ;
 int qcom_geni_serial_poll_tx_done (struct uart_port*) ;
 int qcom_geni_serial_stop_rx (struct uart_port*) ;
 struct qcom_geni_serial_port* to_dev_port (struct uart_port*,struct uart_port*) ;
 scalar_t__ uart_console (struct uart_port*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int qcom_geni_serial_port_setup(struct uart_port *uport)
{
 struct qcom_geni_serial_port *port = to_dev_port(uport, uport);
 u32 rxstale = DEFAULT_BITS_PER_CHAR * STALE_TIMEOUT;
 u32 proto;

 if (uart_console(uport)) {
  port->tx_bytes_pw = 1;
  port->rx_bytes_pw = CONSOLE_RX_BYTES_PW;
 } else {
  port->tx_bytes_pw = 4;
  port->rx_bytes_pw = 4;
 }

 proto = geni_se_read_proto(&port->se);
 if (proto != GENI_SE_UART) {
  dev_err(uport->dev, "Invalid FW loaded, proto: %d\n", proto);
  return -ENXIO;
 }

 qcom_geni_serial_stop_rx(uport);

 get_tx_fifo_size(port);

 writel(rxstale, uport->membase + SE_UART_RX_STALE_CNT);




 if (uart_console(uport))
  qcom_geni_serial_poll_tx_done(uport);
 geni_se_config_packing(&port->se, BITS_PER_BYTE, port->tx_bytes_pw,
      0, 1, 0);
 geni_se_config_packing(&port->se, BITS_PER_BYTE, port->rx_bytes_pw,
      0, 0, 1);
 geni_se_init(&port->se, UART_RX_WM, port->rx_fifo_depth - 2);
 geni_se_select_mode(&port->se, GENI_SE_FIFO);
 if (!uart_console(uport)) {
  port->rx_fifo = devm_kcalloc(uport->dev,
   port->rx_fifo_depth, sizeof(u32), GFP_KERNEL);
  if (!port->rx_fifo)
   return -ENOMEM;
 }
 port->setup = 1;

 return 0;
}
