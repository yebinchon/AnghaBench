
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int IFLA_OFFLOAD_XSTATS_CPU_HIT ;

__attribute__((used)) static bool port_has_offload_stats(const struct net_device *netdev,
       int attr_id)
{
 return (attr_id == IFLA_OFFLOAD_XSTATS_CPU_HIT);
}
