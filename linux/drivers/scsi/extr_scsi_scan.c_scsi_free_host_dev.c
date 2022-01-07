
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {scalar_t__ id; TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ this_id; } ;


 int BUG_ON (int) ;
 int __scsi_remove_device (struct scsi_device*) ;

void scsi_free_host_dev(struct scsi_device *sdev)
{
 BUG_ON(sdev->id != sdev->host->this_id);

 __scsi_remove_device(sdev);
}
