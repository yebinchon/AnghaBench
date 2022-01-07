
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_expander_device {int level; } ;
struct domain_device {TYPE_2__* port; int rphy; } ;
struct TYPE_3__ {int max_level; } ;
struct TYPE_4__ {TYPE_1__ disc; } ;


 int mb () ;
 struct sas_expander_device* rphy_to_expander_device (int ) ;
 int sas_discover_bfs_by_root_level (struct domain_device*,int) ;
 int sas_ex_discover_devices (struct domain_device*,int) ;

__attribute__((used)) static int sas_discover_bfs_by_root(struct domain_device *dev)
{
 int res;
 struct sas_expander_device *ex = rphy_to_expander_device(dev->rphy);
 int level = ex->level+1;

 res = sas_ex_discover_devices(dev, -1);
 if (res)
  goto out;
 do {
  res = sas_discover_bfs_by_root_level(dev, level);
  mb();
  level += 1;
 } while (level <= dev->port->disc.max_level);
out:
 return res;
}
