
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cd {TYPE_1__* device; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;
struct TYPE_2__ {int sector_size; } ;


 int sr_set_blocklength (struct scsi_cd*,int) ;

__attribute__((used)) static void sr_release(struct cdrom_device_info *cdi)
{
 struct scsi_cd *cd = cdi->handle;

 if (cd->device->sector_size > 2048)
  sr_set_blocklength(cd, 2048);

}
