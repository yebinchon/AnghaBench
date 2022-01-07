
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_port {int dummy; } ;
struct sas_phy {int dummy; } ;
struct sas_ha_struct {int phy_port_lock; } ;
struct domain_device {struct sas_phy* phy; TYPE_1__* port; } ;
struct TYPE_2__ {struct sas_ha_struct* ha; } ;


 struct sas_phy* sas_port_get_phy (struct sas_port*) ;
 int sas_port_put_phy (struct sas_phy*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void sas_device_set_phy(struct domain_device *dev, struct sas_port *port)
{
 struct sas_ha_struct *ha;
 struct sas_phy *new_phy;

 if (!dev)
  return;

 ha = dev->port->ha;
 new_phy = sas_port_get_phy(port);


 spin_lock_irq(&ha->phy_port_lock);
 if (new_phy) {
  sas_port_put_phy(dev->phy);
  dev->phy = new_phy;
 }
 spin_unlock_irq(&ha->phy_port_lock);
}
