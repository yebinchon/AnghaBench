
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cd {int cdi; TYPE_1__* device; } ;
struct gendisk {int dummy; } ;
struct TYPE_2__ {int disk_events_disable_depth; } ;


 int atomic_read (int *) ;
 unsigned int cdrom_check_events (int *,unsigned int) ;
 struct scsi_cd* scsi_cd_get (struct gendisk*) ;
 int scsi_cd_put (struct scsi_cd*) ;

__attribute__((used)) static unsigned int sr_block_check_events(struct gendisk *disk,
       unsigned int clearing)
{
 unsigned int ret = 0;
 struct scsi_cd *cd;

 cd = scsi_cd_get(disk);
 if (!cd)
  return 0;

 if (!atomic_read(&cd->device->disk_events_disable_depth))
  ret = cdrom_check_events(&cd->cdi, clearing);

 scsi_cd_put(cd);
 return ret;
}
