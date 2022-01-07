
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int bnx2fc_queue_depth ;
 int scsi_change_queue_depth (struct scsi_device*,int ) ;

__attribute__((used)) static int bnx2fc_slave_configure(struct scsi_device *sdev)
{
 if (!bnx2fc_queue_depth)
  return 0;

 scsi_change_queue_depth(sdev, bnx2fc_queue_depth);
 return 0;
}
