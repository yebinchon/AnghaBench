
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int shost_gendev; TYPE_1__* hostt; int shost_dev; } ;
struct TYPE_2__ {scalar_t__* shost_attrs; } ;


 int device_create_file (int *,scalar_t__) ;
 int transport_configure_device (int *) ;
 int transport_register_device (int *) ;

int scsi_sysfs_add_host(struct Scsi_Host *shost)
{
 int error, i;


 if (shost->hostt->shost_attrs) {
  for (i = 0; shost->hostt->shost_attrs[i]; i++) {
   error = device_create_file(&shost->shost_dev,
     shost->hostt->shost_attrs[i]);
   if (error)
    return error;
  }
 }

 transport_register_device(&shost->shost_gendev);
 transport_configure_device(&shost->shost_gendev);
 return 0;
}
