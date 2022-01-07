
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sas_ha_struct {int lock; int eh_active; } ;
struct TYPE_6__ {int eh_list_node; } ;
struct TYPE_5__ {int ap; } ;
struct domain_device {scalar_t__ dev_type; TYPE_3__ ssp_dev; TYPE_2__ sata_dev; int dev_list_node; int siblings; TYPE_1__* port; int parent; } ;
struct asd_sas_port {int dev_list_lock; struct sas_ha_struct* ha; } ;
struct TYPE_4__ {int * port_dev; } ;


 scalar_t__ SAS_END_DEVICE ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int sas_ata_end_eh (int ) ;
 int sas_notify_lldd_dev_gone (struct domain_device*) ;
 int sas_put_device (struct domain_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void sas_unregister_common_dev(struct asd_sas_port *port, struct domain_device *dev)
{
 struct sas_ha_struct *ha = port->ha;

 sas_notify_lldd_dev_gone(dev);
 if (!dev->parent)
  dev->port->port_dev = ((void*)0);
 else
  list_del_init(&dev->siblings);

 spin_lock_irq(&port->dev_list_lock);
 list_del_init(&dev->dev_list_node);
 if (dev_is_sata(dev))
  sas_ata_end_eh(dev->sata_dev.ap);
 spin_unlock_irq(&port->dev_list_lock);

 spin_lock_irq(&ha->lock);
 if (dev->dev_type == SAS_END_DEVICE &&
     !list_empty(&dev->ssp_dev.eh_list_node)) {
  list_del_init(&dev->ssp_dev.eh_list_node);
  ha->eh_active--;
 }
 spin_unlock_irq(&ha->lock);

 sas_put_device(dev);
}
