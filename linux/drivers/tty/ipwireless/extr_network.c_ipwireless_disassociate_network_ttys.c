
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_network {int *** associated_ttys; } ;


 int MAX_ASSOCIATED_TTYS ;

void ipwireless_disassociate_network_ttys(struct ipw_network *network,
       unsigned int channel_idx)
{
 int i;

 for (i = 0; i < MAX_ASSOCIATED_TTYS; i++)
  network->associated_ttys[channel_idx][i] = ((void*)0);
}
