
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpuart_port {int dummy; } ;


 int lpuart_copy_rx_to_tty (struct lpuart_port*) ;

__attribute__((used)) static void lpuart_dma_rx_complete(void *arg)
{
 struct lpuart_port *sport = arg;

 lpuart_copy_rx_to_tty(sport);
}
