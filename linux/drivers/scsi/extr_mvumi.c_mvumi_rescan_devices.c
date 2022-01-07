
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; } ;
struct mvumi_hba {int shost; } ;


 struct scsi_device* scsi_device_lookup (int ,int ,int,int ) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_rescan_device (int *) ;

__attribute__((used)) static void mvumi_rescan_devices(struct mvumi_hba *mhba, int id)
{
 struct scsi_device *sdev;

 sdev = scsi_device_lookup(mhba->shost, 0, id, 0);
 if (sdev) {
  scsi_rescan_device(&sdev->sdev_gendev);
  scsi_device_put(sdev);
 }
}
