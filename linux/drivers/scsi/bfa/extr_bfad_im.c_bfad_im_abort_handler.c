
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__ host_scribble; TYPE_1__* device; } ;
struct bfad_s {int bfad_lock; } ;
struct bfad_ioim_s {int dummy; } ;
struct bfad_im_port_s {TYPE_2__* shost; struct bfad_s* bfad; } ;
struct bfa_ioim_s {int iotag; struct bfad_ioim_s* dio; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
struct TYPE_4__ {int host_no; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 int BFA_LOG (int ,struct bfad_s*,int ,char*,int ,struct scsi_cmnd*,int ) ;
 int FAILED ;
 int HZ ;
 int KERN_INFO ;
 int SUCCESS ;
 int TASK_UNINTERRUPTIBLE ;
 int bfa_ioim_abort (struct bfa_ioim_s*) ;
 int bfa_log_level ;
 int bfa_trc (struct bfad_s*,int ) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int
bfad_im_abort_handler(struct scsi_cmnd *cmnd)
{
 struct Scsi_Host *shost = cmnd->device->host;
 struct bfad_im_port_s *im_port =
   (struct bfad_im_port_s *) shost->hostdata[0];
 struct bfad_s *bfad = im_port->bfad;
 struct bfa_ioim_s *hal_io;
 unsigned long flags;
 u32 timeout;
 int rc = FAILED;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 hal_io = (struct bfa_ioim_s *) cmnd->host_scribble;
 if (!hal_io) {

  rc = SUCCESS;
  goto out;
 }
 if (hal_io->dio != (struct bfad_ioim_s *) cmnd) {
  rc = FAILED;
  goto out;
 }

 bfa_trc(bfad, hal_io->iotag);
 BFA_LOG(KERN_INFO, bfad, bfa_log_level,
  "scsi%d: abort cmnd %p iotag %x\n",
  im_port->shost->host_no, cmnd, hal_io->iotag);
 (void) bfa_ioim_abort(hal_io);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);


 timeout = 10;
 while ((struct bfa_ioim_s *) cmnd->host_scribble == hal_io) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(timeout);
  if (timeout < 4 * HZ)
   timeout *= 2;
 }

 cmnd->scsi_done(cmnd);
 bfa_trc(bfad, hal_io->iotag);
 BFA_LOG(KERN_INFO, bfad, bfa_log_level,
  "scsi%d: complete abort 0x%p iotag 0x%x\n",
  im_port->shost->host_no, cmnd, hal_io->iotag);
 return SUCCESS;
out:
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 return rc;
}
