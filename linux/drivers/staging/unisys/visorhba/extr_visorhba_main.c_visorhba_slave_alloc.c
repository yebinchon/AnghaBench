
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorhba_devdata {int dummy; } ;
struct visordisk_info {struct scsi_device* sdev; } ;
struct scsi_device {struct visordisk_info* hostdata; scalar_t__ host; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct visordisk_info* kzalloc (int,int ) ;

__attribute__((used)) static int visorhba_slave_alloc(struct scsi_device *scsidev)
{



 struct visordisk_info *vdisk;
 struct visorhba_devdata *devdata;
 struct Scsi_Host *scsihost = (struct Scsi_Host *)scsidev->host;


 if (scsidev->hostdata)
  return 0;


 devdata = (struct visorhba_devdata *)scsihost->hostdata;
 if (!devdata)
  return 0;

 vdisk = kzalloc(sizeof(*vdisk), GFP_ATOMIC);
 if (!vdisk)
  return -ENOMEM;

 vdisk->sdev = scsidev;
 scsidev->hostdata = vdisk;
 return 0;
}
