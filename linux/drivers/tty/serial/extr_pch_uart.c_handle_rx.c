
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eg20t_port {int dummy; } ;


 int handle_rx_to (struct eg20t_port*) ;

__attribute__((used)) static int handle_rx(struct eg20t_port *priv)
{
 return handle_rx_to(priv);
}
