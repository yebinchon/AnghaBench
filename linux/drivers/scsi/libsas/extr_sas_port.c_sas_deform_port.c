
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_5__ {TYPE_1__* shost; } ;
struct sas_ha_struct {int disco_q; int phy_port_lock; TYPE_2__ core; } ;
struct expander_device {int ex_change_count; } ;
struct domain_device {struct expander_device ex_dev; int dev_type; int pathways; } ;
struct asd_sas_port {int num_phys; unsigned int phy_mask; int * port; int phy_list_lock; scalar_t__ oob_mode; scalar_t__ tproto; scalar_t__ iproto; scalar_t__ class; int attached_sas_addr; int sas_addr; int phy_list; struct domain_device* port_dev; } ;
struct asd_sas_phy {unsigned int id; struct asd_sas_port* port; int port_phy_el; int phy; struct sas_ha_struct* ha; } ;
struct TYPE_6__ {int (* lldd_port_deformed ) (struct asd_sas_phy*) ;} ;
struct TYPE_4__ {int transportt; } ;


 int DISCE_REVALIDATE_DOMAIN ;
 int INIT_LIST_HEAD (int *) ;
 int SAS_ADDR_SIZE ;
 scalar_t__ dev_is_expander (int ) ;
 int flush_workqueue (int ) ;
 int list_del_init (int *) ;
 int memset (int ,int ,int ) ;
 int sas_destruct_devices (struct asd_sas_port*) ;
 int sas_device_set_phy (struct domain_device*,int *) ;
 int sas_discover_event (struct asd_sas_port*,int ) ;
 int sas_phy_set_target (struct asd_sas_phy*,int *) ;
 int sas_port_delete (int *) ;
 int sas_port_delete_phy (int *,int ) ;
 int sas_unregister_domain_devices (struct asd_sas_port*,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct asd_sas_phy*) ;
 struct sas_internal* to_sas_internal (int ) ;

void sas_deform_port(struct asd_sas_phy *phy, int gone)
{
 struct sas_ha_struct *sas_ha = phy->ha;
 struct asd_sas_port *port = phy->port;
 struct sas_internal *si =
  to_sas_internal(sas_ha->core.shost->transportt);
 struct domain_device *dev;
 unsigned long flags;

 if (!port)
  return;

 dev = port->port_dev;
 if (dev)
  dev->pathways--;

 if (port->num_phys == 1) {
  sas_unregister_domain_devices(port, gone);
  sas_destruct_devices(port);
  sas_port_delete(port->port);
  port->port = ((void*)0);
 } else {
  sas_port_delete_phy(port->port, phy->phy);
  sas_device_set_phy(dev, port->port);
 }

 if (si->dft->lldd_port_deformed)
  si->dft->lldd_port_deformed(phy);

 spin_lock_irqsave(&sas_ha->phy_port_lock, flags);
 spin_lock(&port->phy_list_lock);

 list_del_init(&phy->port_phy_el);
 sas_phy_set_target(phy, ((void*)0));
 phy->port = ((void*)0);
 port->num_phys--;
 port->phy_mask &= ~(1U << phy->id);

 if (port->num_phys == 0) {
  INIT_LIST_HEAD(&port->phy_list);
  memset(port->sas_addr, 0, SAS_ADDR_SIZE);
  memset(port->attached_sas_addr, 0, SAS_ADDR_SIZE);
  port->class = 0;
  port->iproto = 0;
  port->tproto = 0;
  port->oob_mode = 0;
  port->phy_mask = 0;
 }
 spin_unlock(&port->phy_list_lock);
 spin_unlock_irqrestore(&sas_ha->phy_port_lock, flags);


 if (port->port && dev && dev_is_expander(dev->dev_type)) {
  struct expander_device *ex_dev = &dev->ex_dev;

  ex_dev->ex_change_count = -1;
  sas_discover_event(port, DISCE_REVALIDATE_DOMAIN);
 }
 flush_workqueue(sas_ha->disco_q);

 return;
}
