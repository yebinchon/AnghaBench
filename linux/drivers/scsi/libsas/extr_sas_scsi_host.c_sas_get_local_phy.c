
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_phy {int dev; } ;
struct sas_ha_struct {int phy_port_lock; } ;
struct domain_device {struct sas_phy* phy; TYPE_1__* port; } ;
struct TYPE_2__ {struct sas_ha_struct* ha; } ;


 int BUG_ON (int) ;
 int get_device (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct sas_phy *sas_get_local_phy(struct domain_device *dev)
{
 struct sas_ha_struct *ha = dev->port->ha;
 struct sas_phy *phy;
 unsigned long flags;




 BUG_ON(!dev->phy);

 spin_lock_irqsave(&ha->phy_port_lock, flags);
 phy = dev->phy;
 get_device(&phy->dev);
 spin_unlock_irqrestore(&ha->phy_port_lock, flags);

 return phy;
}
