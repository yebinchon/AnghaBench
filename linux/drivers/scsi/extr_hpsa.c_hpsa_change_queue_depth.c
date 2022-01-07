
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct hpsa_scsi_dev_t* hostdata; } ;
struct hpsa_scsi_dev_t {int queue_depth; } ;


 int ENODEV ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;

__attribute__((used)) static int hpsa_change_queue_depth(struct scsi_device *sdev, int qdepth)
{
 struct hpsa_scsi_dev_t *logical_drive = sdev->hostdata;

 if (!logical_drive)
  return -ENODEV;

 if (qdepth < 1)
  qdepth = 1;
 else if (qdepth > logical_drive->queue_depth)
  qdepth = logical_drive->queue_depth;

 return scsi_change_queue_depth(sdev, qdepth);
}
