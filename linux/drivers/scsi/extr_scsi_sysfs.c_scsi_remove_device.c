
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct Scsi_Host* host; } ;
struct Scsi_Host {int scan_mutex; } ;


 int __scsi_remove_device (struct scsi_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void scsi_remove_device(struct scsi_device *sdev)
{
 struct Scsi_Host *shost = sdev->host;

 mutex_lock(&shost->scan_mutex);
 __scsi_remove_device(sdev);
 mutex_unlock(&shost->scan_mutex);
}
