
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int csio_lun_qdepth ;
 int scsi_change_queue_depth (struct scsi_device*,int ) ;

__attribute__((used)) static int
csio_slave_configure(struct scsi_device *sdev)
{
 scsi_change_queue_depth(sdev, csio_lun_qdepth);
 return 0;
}
