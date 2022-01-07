
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ SE_GENI_TX_FIFO_STATUS ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned int qcom_geni_serial_tx_empty(struct uart_port *uport)
{
 return !readl(uport->membase + SE_GENI_TX_FIFO_STATUS);
}
