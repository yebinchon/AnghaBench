
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uas_dev_info {int flags; scalar_t__ qdepth; } ;
struct scsi_device {int no_report_opcodes; int broken_fua; int skip_ms_page_3f; int skip_ms_page_8; int wce_default_on; int fix_capacity; struct uas_dev_info* hostdata; } ;


 int US_FL_ALWAYS_SYNC ;
 int US_FL_BROKEN_FUA ;
 int US_FL_FIX_CAPACITY ;
 int US_FL_NO_REPORT_OPCODES ;
 int US_FL_NO_WP_DETECT ;
 int scsi_change_queue_depth (struct scsi_device*,scalar_t__) ;

__attribute__((used)) static int uas_slave_configure(struct scsi_device *sdev)
{
 struct uas_dev_info *devinfo = sdev->hostdata;

 if (devinfo->flags & US_FL_NO_REPORT_OPCODES)
  sdev->no_report_opcodes = 1;


 if (devinfo->flags & US_FL_BROKEN_FUA)
  sdev->broken_fua = 1;


 if (devinfo->flags & US_FL_ALWAYS_SYNC) {
  sdev->skip_ms_page_3f = 1;
  sdev->skip_ms_page_8 = 1;
  sdev->wce_default_on = 1;
 }






 if (devinfo->flags & US_FL_FIX_CAPACITY)
  sdev->fix_capacity = 1;
 if (devinfo->flags & US_FL_NO_WP_DETECT)
  sdev->skip_ms_page_3f = 1;

 scsi_change_queue_depth(sdev, devinfo->qdepth - 2);
 return 0;
}
