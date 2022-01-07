
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_expander_device {int level; } ;
struct domain_device {int rphy; TYPE_2__* port; } ;
struct TYPE_3__ {int max_level; } ;
struct TYPE_4__ {TYPE_1__ disc; } ;


 struct sas_expander_device* rphy_to_expander_device (int ) ;
 int sas_discover_expander (struct domain_device*) ;
 int sas_ex_bfs_disc (TYPE_2__*) ;
 int sas_rphy_add (int ) ;
 int sas_rphy_remove (int ) ;

int sas_discover_root_expander(struct domain_device *dev)
{
 int res;
 struct sas_expander_device *ex = rphy_to_expander_device(dev->rphy);

 res = sas_rphy_add(dev->rphy);
 if (res)
  goto out_err;

 ex->level = dev->port->disc.max_level;
 res = sas_discover_expander(dev);
 if (res)
  goto out_err2;

 sas_ex_bfs_disc(dev->port);

 return res;

out_err2:
 sas_rphy_remove(dev->rphy);
out_err:
 return res;
}
