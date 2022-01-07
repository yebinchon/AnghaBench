
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct Scsi_Host* host; } ;
struct Scsi_Host {int cmd_per_lun; } ;


 int min (int,int) ;
 int scsi_change_queue_depth (struct scsi_device*,int ) ;

__attribute__((used)) static int virtscsi_change_queue_depth(struct scsi_device *sdev, int qdepth)
{
 struct Scsi_Host *shost = sdev->host;
 int max_depth = shost->cmd_per_lun;

 return scsi_change_queue_depth(sdev, min(max_depth, qdepth));
}
