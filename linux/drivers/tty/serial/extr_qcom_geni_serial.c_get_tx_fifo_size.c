
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int fifosize; } ;
struct qcom_geni_serial_port {int tx_fifo_depth; int tx_fifo_width; int se; int rx_fifo_depth; struct uart_port uport; } ;


 int BITS_PER_BYTE ;
 int geni_se_get_rx_fifo_depth (int *) ;
 int geni_se_get_tx_fifo_depth (int *) ;
 int geni_se_get_tx_fifo_width (int *) ;

__attribute__((used)) static void get_tx_fifo_size(struct qcom_geni_serial_port *port)
{
 struct uart_port *uport;

 uport = &port->uport;
 port->tx_fifo_depth = geni_se_get_tx_fifo_depth(&port->se);
 port->tx_fifo_width = geni_se_get_tx_fifo_width(&port->se);
 port->rx_fifo_depth = geni_se_get_rx_fifo_depth(&port->se);
 uport->fifosize =
  (port->tx_fifo_depth * port->tx_fifo_width) / BITS_PER_BYTE;
}
