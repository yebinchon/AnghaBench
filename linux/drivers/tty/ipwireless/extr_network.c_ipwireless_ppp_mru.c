
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_network {int mru; } ;



int ipwireless_ppp_mru(const struct ipw_network *network)
{
 return network->mru;
}
