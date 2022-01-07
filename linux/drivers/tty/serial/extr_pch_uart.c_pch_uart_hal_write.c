
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eg20t_port {scalar_t__ membase; } ;


 scalar_t__ PCH_UART_THR ;
 int iowrite8 (unsigned int,scalar_t__) ;

__attribute__((used)) static void pch_uart_hal_write(struct eg20t_port *priv,
         const unsigned char *buf, int tx_size)
{
 int i;
 unsigned int thr;

 for (i = 0; i < tx_size;) {
  thr = buf[i++];
  iowrite8(thr, priv->membase + PCH_UART_THR);
 }
}
