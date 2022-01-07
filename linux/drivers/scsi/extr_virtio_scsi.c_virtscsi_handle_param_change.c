
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtio_scsi_event {unsigned int* lun; int reason; } ;
struct virtio_scsi {int vdev; } ;
struct scsi_device {int sdev_gendev; } ;
struct Scsi_Host {int host_no; } ;


 int pr_err (char*,int ,unsigned int,unsigned int) ;
 struct scsi_device* scsi_device_lookup (struct Scsi_Host*,int ,unsigned int,unsigned int) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_rescan_device (int *) ;
 int virtio32_to_cpu (int ,int ) ;
 struct Scsi_Host* virtio_scsi_host (int ) ;

__attribute__((used)) static void virtscsi_handle_param_change(struct virtio_scsi *vscsi,
      struct virtio_scsi_event *event)
{
 struct scsi_device *sdev;
 struct Scsi_Host *shost = virtio_scsi_host(vscsi->vdev);
 unsigned int target = event->lun[1];
 unsigned int lun = (event->lun[2] << 8) | event->lun[3];
 u8 asc = virtio32_to_cpu(vscsi->vdev, event->reason) & 255;
 u8 ascq = virtio32_to_cpu(vscsi->vdev, event->reason) >> 8;

 sdev = scsi_device_lookup(shost, 0, target, lun);
 if (!sdev) {
  pr_err("SCSI device %d 0 %d %d not found\n",
   shost->host_no, target, lun);
  return;
 }



 if (asc == 0x2a && (ascq == 0x00 || ascq == 0x01 || ascq == 0x09))
  scsi_rescan_device(&sdev->sdev_gendev);

 scsi_device_put(sdev);
}
