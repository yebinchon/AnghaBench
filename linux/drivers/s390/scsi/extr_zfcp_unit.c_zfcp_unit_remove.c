
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zfcp_unit {int dev; int list; } ;
struct zfcp_port {int unit_list_lock; } ;
struct scsi_device {int dummy; } ;


 int EINVAL ;
 struct zfcp_unit* _zfcp_unit_find (struct zfcp_port*,int ) ;
 int device_unregister (int *) ;
 int list_del (int *) ;
 int put_device (int *) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_remove_device (struct scsi_device*) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 struct scsi_device* zfcp_unit_sdev (struct zfcp_unit*) ;

int zfcp_unit_remove(struct zfcp_port *port, u64 fcp_lun)
{
 struct zfcp_unit *unit;
 struct scsi_device *sdev;

 write_lock_irq(&port->unit_list_lock);
 unit = _zfcp_unit_find(port, fcp_lun);
 if (unit)
  list_del(&unit->list);
 write_unlock_irq(&port->unit_list_lock);

 if (!unit)
  return -EINVAL;

 sdev = zfcp_unit_sdev(unit);
 if (sdev) {
  scsi_remove_device(sdev);
  scsi_device_put(sdev);
 }

 put_device(&unit->dev);

 device_unregister(&unit->dev);

 return 0;
}
