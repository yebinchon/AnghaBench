
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int groups; int release; int * parent; } ;
struct zfcp_unit {int list; TYPE_1__ dev; int scsi_work; scalar_t__ fcp_lun; struct zfcp_port* port; } ;
struct zfcp_port {int unit_list_lock; int unit_list; int units; int dev; } ;


 int EEXIST ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ dev_set_name (TYPE_1__*,char*,unsigned long long) ;
 scalar_t__ device_register (TYPE_1__*) ;
 int kfree (struct zfcp_unit*) ;
 struct zfcp_unit* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_1__*) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 scalar_t__ zfcp_sysfs_port_is_removing (struct zfcp_port*) ;
 int zfcp_sysfs_port_units_mutex ;
 int zfcp_unit_attr_groups ;
 struct zfcp_unit* zfcp_unit_find (struct zfcp_port*,scalar_t__) ;
 int zfcp_unit_release ;
 int zfcp_unit_scsi_scan (struct zfcp_unit*) ;
 int zfcp_unit_scsi_scan_work ;

int zfcp_unit_add(struct zfcp_port *port, u64 fcp_lun)
{
 struct zfcp_unit *unit;
 int retval = 0;

 mutex_lock(&zfcp_sysfs_port_units_mutex);
 if (zfcp_sysfs_port_is_removing(port)) {

  retval = -ENODEV;
  goto out;
 }

 unit = zfcp_unit_find(port, fcp_lun);
 if (unit) {
  put_device(&unit->dev);
  retval = -EEXIST;
  goto out;
 }

 unit = kzalloc(sizeof(struct zfcp_unit), GFP_KERNEL);
 if (!unit) {
  retval = -ENOMEM;
  goto out;
 }

 unit->port = port;
 unit->fcp_lun = fcp_lun;
 unit->dev.parent = &port->dev;
 unit->dev.release = zfcp_unit_release;
 unit->dev.groups = zfcp_unit_attr_groups;
 INIT_WORK(&unit->scsi_work, zfcp_unit_scsi_scan_work);

 if (dev_set_name(&unit->dev, "0x%016llx",
    (unsigned long long) fcp_lun)) {
  kfree(unit);
  retval = -ENOMEM;
  goto out;
 }

 if (device_register(&unit->dev)) {
  put_device(&unit->dev);
  retval = -ENOMEM;
  goto out;
 }

 atomic_inc(&port->units);

 write_lock_irq(&port->unit_list_lock);
 list_add_tail(&unit->list, &port->unit_list);
 write_unlock_irq(&port->unit_list_lock);




 mutex_unlock(&zfcp_sysfs_port_units_mutex);

 zfcp_unit_scsi_scan(unit);
 return retval;

out:
 mutex_unlock(&zfcp_sysfs_port_units_mutex);
 return retval;
}
