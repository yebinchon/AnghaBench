
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_network {int dummy; } ;
struct ipw_hardware {struct ipw_network* network; } ;



void ipwireless_associate_network(struct ipw_hardware *hw,
      struct ipw_network *network)
{
 hw->network = network;
}
