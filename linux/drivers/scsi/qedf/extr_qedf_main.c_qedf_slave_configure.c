
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 scalar_t__ qedf_queue_depth ;
 int scsi_change_queue_depth (struct scsi_device*,scalar_t__) ;

__attribute__((used)) static int qedf_slave_configure(struct scsi_device *sdev)
{
 if (qedf_queue_depth) {
  scsi_change_queue_depth(sdev, qedf_queue_depth);
 }

 return 0;
}
