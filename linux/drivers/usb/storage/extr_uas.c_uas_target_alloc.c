
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uas_dev_info {int flags; } ;
struct TYPE_3__ {int parent; } ;
struct scsi_target {int no_report_luns; TYPE_1__ dev; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int US_FL_NO_REPORT_LUNS ;
 TYPE_2__* dev_to_shost (int ) ;

__attribute__((used)) static int uas_target_alloc(struct scsi_target *starget)
{
 struct uas_dev_info *devinfo = (struct uas_dev_info *)
   dev_to_shost(starget->dev.parent)->hostdata;

 if (devinfo->flags & US_FL_NO_REPORT_LUNS)
  starget->no_report_luns = 1;

 return 0;
}
