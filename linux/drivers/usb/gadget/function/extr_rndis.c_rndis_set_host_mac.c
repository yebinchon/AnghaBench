
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rndis_params {int const* host_mac; } ;



void rndis_set_host_mac(struct rndis_params *params, const u8 *addr)
{
 params->host_mac = addr;
}
