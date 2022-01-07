
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {TYPE_2__* host; } ;
struct gendisk {int dummy; } ;
struct TYPE_6__ {struct scsi_device* device; } ;
struct TYPE_5__ {TYPE_1__* hostt; } ;
struct TYPE_4__ {int (* unlock_native_capacity ) (struct scsi_device*) ;} ;


 TYPE_3__* scsi_disk (struct gendisk*) ;
 int stub1 (struct scsi_device*) ;

__attribute__((used)) static void sd_unlock_native_capacity(struct gendisk *disk)
{
 struct scsi_device *sdev = scsi_disk(disk)->device;

 if (sdev->host->hostt->unlock_native_capacity)
  sdev->host->hostt->unlock_native_capacity(sdev);
}
