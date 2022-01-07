
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int NCR_700_MAX_TAGS ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;

__attribute__((used)) static int
NCR_700_change_queue_depth(struct scsi_device *SDp, int depth)
{
 if (depth > NCR_700_MAX_TAGS)
  depth = NCR_700_MAX_TAGS;
 return scsi_change_queue_depth(SDp, depth);
}
