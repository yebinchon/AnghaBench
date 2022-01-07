
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visordisk_info {int ios_threshold; int error_count; } ;
struct TYPE_2__ {scalar_t__* cmnd; scalar_t__ addlstat; int linuxstat; int sensebuf; } ;
struct uiscmdrsp {TYPE_1__ scsi; } ;
struct scsi_device {struct visordisk_info* hostdata; } ;
struct scsi_cmnd {int sense_buffer; struct scsi_device* device; } ;


 scalar_t__ ADDL_SEL_TIMEOUT ;
 scalar_t__ DID_NO_CONNECT ;
 scalar_t__ INQUIRY ;
 int IOS_ERROR_THRESHOLD ;
 int MAX_SENSE_SIZE ;
 scalar_t__ VISORHBA_ERROR_COUNT ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ host_byte (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void do_scsi_linuxstat(struct uiscmdrsp *cmdrsp,
         struct scsi_cmnd *scsicmd)
{
 struct visordisk_info *vdisk;
 struct scsi_device *scsidev;

 scsidev = scsicmd->device;
 memcpy(scsicmd->sense_buffer, cmdrsp->scsi.sensebuf, MAX_SENSE_SIZE);


 if (cmdrsp->scsi.cmnd[0] == INQUIRY &&
     (host_byte(cmdrsp->scsi.linuxstat) == DID_NO_CONNECT) &&
     cmdrsp->scsi.addlstat == ADDL_SEL_TIMEOUT)
  return;

 vdisk = scsidev->hostdata;
 if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT) {
  atomic_inc(&vdisk->error_count);
  atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 }
}
