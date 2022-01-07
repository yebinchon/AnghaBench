
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_rport {scalar_t__ fast_io_fail_tmo; scalar_t__ dev_loss_tmo; } ;
struct srp_internal {TYPE_1__* f; } ;
struct scsi_device {int sdev_gendev; struct Scsi_Host* host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct Scsi_Host {int transportt; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_2__ {scalar_t__ reset_timer_if_blocked; } ;


 int BLK_EH_DONE ;
 int BLK_EH_RESET_TIMER ;
 int dev_name (int *) ;
 int pr_debug (char*,int ) ;
 scalar_t__ scsi_device_blocked (struct scsi_device*) ;
 struct srp_rport* shost_to_rport (struct Scsi_Host*) ;
 struct srp_internal* to_srp_internal (int ) ;

enum blk_eh_timer_return srp_timed_out(struct scsi_cmnd *scmd)
{
 struct scsi_device *sdev = scmd->device;
 struct Scsi_Host *shost = sdev->host;
 struct srp_internal *i = to_srp_internal(shost->transportt);
 struct srp_rport *rport = shost_to_rport(shost);

 pr_debug("timeout for sdev %s\n", dev_name(&sdev->sdev_gendev));
 return rport && rport->fast_io_fail_tmo < 0 &&
  rport->dev_loss_tmo < 0 &&
  i->f->reset_timer_if_blocked && scsi_device_blocked(sdev) ?
  BLK_EH_RESET_TIMER : BLK_EH_DONE;
}
