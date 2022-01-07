
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int MPC52xx_PSC_MAXNUM ;
 struct device_node** mpc52xx_uart_nodes ;
 int of_node_get (struct device_node*) ;

__attribute__((used)) static void
mpc52xx_uart_of_assign(struct device_node *np)
{
 int i;


 for (i = 0; i < MPC52xx_PSC_MAXNUM; i++) {
  if (mpc52xx_uart_nodes[i] == ((void*)0)) {
   of_node_get(np);
   mpc52xx_uart_nodes[i] = np;
   return;
  }
 }
}
