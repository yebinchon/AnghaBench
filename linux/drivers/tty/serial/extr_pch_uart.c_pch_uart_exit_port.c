
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buf; } ;
struct eg20t_port {TYPE_1__ rxbuf; int port; int debugfs; } ;


 int debugfs_remove (int ) ;
 int free_page (unsigned long) ;
 int pch_uart_driver ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static void pch_uart_exit_port(struct eg20t_port *priv)
{




 uart_remove_one_port(&pch_uart_driver, &priv->port);
 free_page((unsigned long)priv->rxbuf.buf);
}
