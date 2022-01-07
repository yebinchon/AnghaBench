
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_tty {int dummy; } ;
struct ipw_network {struct ipw_tty*** associated_ttys; } ;


 int MAX_ASSOCIATED_TTYS ;

void ipwireless_associate_network_tty(struct ipw_network *network,
          unsigned int channel_idx,
          struct ipw_tty *tty)
{
 int i;

 for (i = 0; i < MAX_ASSOCIATED_TTYS; i++)
  if (network->associated_ttys[channel_idx][i] == ((void*)0)) {
   network->associated_ttys[channel_idx][i] = tty;
   break;
  }
}
