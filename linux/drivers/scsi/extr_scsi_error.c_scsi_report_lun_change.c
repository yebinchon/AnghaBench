
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* sdev_target; } ;
struct TYPE_2__ {int expecting_lun_change; } ;



__attribute__((used)) static void scsi_report_lun_change(struct scsi_device *sdev)
{
 sdev->sdev_target->expecting_lun_change = 1;
}
