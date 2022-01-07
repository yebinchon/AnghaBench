
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct Scsi_Host* host; } ;
struct Scsi_Host {int can_queue; } ;
struct MPT3SAS_ADAPTER {scalar_t__ enable_sdev_max_qd; } ;


 int scsih_change_queue_depth (struct scsi_device*,int) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;

void
mpt3sas_scsih_change_queue_depth(struct scsi_device *sdev, int qdepth)
{
 struct Scsi_Host *shost = sdev->host;
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);

 if (ioc->enable_sdev_max_qd)
  qdepth = shost->can_queue;

 scsih_change_queue_depth(sdev, qdepth);
}
