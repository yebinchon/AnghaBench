
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rp2_card {int initialized_ports; TYPE_1__* ports; } ;
struct TYPE_2__ {int port; } ;


 int rp2_uart_driver ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static void rp2_remove_ports(struct rp2_card *card)
{
 int i;

 for (i = 0; i < card->initialized_ports; i++)
  uart_remove_one_port(&rp2_uart_driver, &card->ports[i].port);
 card->initialized_ports = 0;
}
