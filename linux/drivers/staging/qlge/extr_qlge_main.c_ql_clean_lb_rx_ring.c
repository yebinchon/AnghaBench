
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int dummy; } ;


 int ql_clean_inbound_rx_ring (struct rx_ring*,int) ;

int ql_clean_lb_rx_ring(struct rx_ring *rx_ring, int budget)
{
 return ql_clean_inbound_rx_ring(rx_ring, budget);
}
