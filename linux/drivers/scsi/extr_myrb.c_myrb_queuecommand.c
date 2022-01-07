
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ channel; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;struct scsi_device* device; } ;
struct Scsi_Host {int dummy; } ;


 int DID_BAD_TARGET ;
 int myrb_ldev_queuecommand (struct Scsi_Host*,struct scsi_cmnd*) ;
 scalar_t__ myrb_logical_channel (struct Scsi_Host*) ;
 int myrb_pthru_queuecommand (struct Scsi_Host*,struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int myrb_queuecommand(struct Scsi_Host *shost,
  struct scsi_cmnd *scmd)
{
 struct scsi_device *sdev = scmd->device;

 if (sdev->channel > myrb_logical_channel(shost)) {
  scmd->result = (DID_BAD_TARGET << 16);
  scmd->scsi_done(scmd);
  return 0;
 }
 if (sdev->channel == myrb_logical_channel(shost))
  return myrb_ldev_queuecommand(shost, scmd);

 return myrb_pthru_queuecommand(shost, scmd);
}
