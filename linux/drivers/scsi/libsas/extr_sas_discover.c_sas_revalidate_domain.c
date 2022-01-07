
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct sas_ha_struct {int disco_mutex; int state; } ;
struct sas_discovery_event {struct asd_sas_port* port; } ;
struct domain_device {int dev_type; } ;
struct TYPE_2__ {int pending; } ;
struct asd_sas_port {int id; TYPE_1__ disc; struct domain_device* port_dev; struct sas_ha_struct* ha; } ;


 int DISCE_REVALIDATE_DOMAIN ;
 int SAS_HA_ATA_EH_ACTIVE ;
 int clear_bit (int ,int *) ;
 int current ;
 scalar_t__ dev_is_expander (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ,...) ;
 int sas_destruct_devices (struct asd_sas_port*) ;
 int sas_destruct_ports (struct asd_sas_port*) ;
 int sas_ex_revalidate_domain (struct domain_device*) ;
 int sas_probe_devices (struct asd_sas_port*) ;
 int task_pid_nr (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 struct sas_discovery_event* to_sas_discovery_event (struct work_struct*) ;

__attribute__((used)) static void sas_revalidate_domain(struct work_struct *work)
{
 int res = 0;
 struct sas_discovery_event *ev = to_sas_discovery_event(work);
 struct asd_sas_port *port = ev->port;
 struct sas_ha_struct *ha = port->ha;
 struct domain_device *ddev = port->port_dev;


 mutex_lock(&ha->disco_mutex);
 if (test_bit(SAS_HA_ATA_EH_ACTIVE, &ha->state)) {
  pr_debug("REVALIDATION DEFERRED on port %d, pid:%d\n",
    port->id, task_pid_nr(current));
  goto out;
 }

 clear_bit(DISCE_REVALIDATE_DOMAIN, &port->disc.pending);

 pr_debug("REVALIDATING DOMAIN on port %d, pid:%d\n", port->id,
   task_pid_nr(current));

 if (ddev && dev_is_expander(ddev->dev_type))
  res = sas_ex_revalidate_domain(ddev);

 pr_debug("done REVALIDATING DOMAIN on port %d, pid:%d, res 0x%x\n",
   port->id, task_pid_nr(current), res);
 out:
 mutex_unlock(&ha->disco_mutex);

 sas_destruct_devices(port);
 sas_destruct_ports(port);
 sas_probe_devices(port);
}
