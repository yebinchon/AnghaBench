
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct sas_discovery_event {struct asd_sas_port* port; } ;
struct domain_device {int dev_type; int dev_list_node; int disco_list_node; int rphy; } ;
struct TYPE_2__ {int pending; } ;
struct asd_sas_port {int id; struct domain_device* port_dev; int dev_list_lock; TYPE_1__ disc; } ;


 int DISCE_DISCOVER_DOMAIN ;
 int ENXIO ;





 int clear_bit (int ,int *) ;
 int current ;
 int list_del_init (int *) ;
 int pr_debug (char*,int ,int ,...) ;
 int pr_err (char*,int) ;
 int pr_notice (char*) ;
 int sas_discover_end_dev (struct domain_device*) ;
 int sas_discover_root_expander (struct domain_device*) ;
 int sas_discover_sata (struct domain_device*) ;
 int sas_get_port_device (struct asd_sas_port*) ;
 int sas_probe_devices (struct asd_sas_port*) ;
 int sas_put_device (struct domain_device*) ;
 int sas_rphy_free (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int task_pid_nr (int ) ;
 struct sas_discovery_event* to_sas_discovery_event (struct work_struct*) ;

__attribute__((used)) static void sas_discover_domain(struct work_struct *work)
{
 struct domain_device *dev;
 int error = 0;
 struct sas_discovery_event *ev = to_sas_discovery_event(work);
 struct asd_sas_port *port = ev->port;

 clear_bit(DISCE_DISCOVER_DOMAIN, &port->disc.pending);

 if (port->port_dev)
  return;

 error = sas_get_port_device(port);
 if (error)
  return;
 dev = port->port_dev;

 pr_debug("DOING DISCOVERY on port %d, pid:%d\n", port->id,
   task_pid_nr(current));

 switch (dev->dev_type) {
 case 131:
  error = sas_discover_end_dev(dev);
  break;
 case 132:
 case 130:
  error = sas_discover_root_expander(dev);
  break;
 case 129:
 case 128:




  pr_notice("ATA device seen but CONFIG_SCSI_SAS_ATA=N so cannot attach\n");



 default:
  error = -ENXIO;
  pr_err("unhandled device %d\n", dev->dev_type);
  break;
 }

 if (error) {
  sas_rphy_free(dev->rphy);
  list_del_init(&dev->disco_list_node);
  spin_lock_irq(&port->dev_list_lock);
  list_del_init(&dev->dev_list_node);
  spin_unlock_irq(&port->dev_list_lock);

  sas_put_device(dev);
  port->port_dev = ((void*)0);
 }

 sas_probe_devices(port);

 pr_debug("DONE DISCOVERY on port %d, pid:%d, result:%d\n", port->id,
   task_pid_nr(current), error);
}
