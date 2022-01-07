
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct ifmap {int dummy; } ;


 int EBUSY ;
 int IFF_UP ;

__attribute__((used)) static int gdm_lte_set_config(struct net_device *dev, struct ifmap *map)
{
 if (dev->flags & IFF_UP)
  return -EBUSY;
 return 0;
}
