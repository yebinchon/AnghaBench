
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct scsi_target {int id; } ;
struct TYPE_3__ {char* ptr; int Status; } ;
struct scsi_cmnd {TYPE_1__ SCp; TYPE_2__* device; } ;
struct bfad_s {int bfad_lock; } ;
struct bfad_itnim_s {int dummy; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef enum bfi_tskim_status { ____Placeholder_bfi_tskim_status } bfi_tskim_status ;
struct TYPE_4__ {struct Scsi_Host* host; } ;


 int BFA_LOG (int ,struct bfad_s*,int ,char*,int) ;
 scalar_t__ BFA_STATUS_OK ;
 int BFI_TSKIM_STS_OK ;
 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 scalar_t__ FAILED ;
 int IO_DONE_BIT ;
 int KERN_ERR ;
 scalar_t__ SUCCESS ;
 int bfa_log_level ;
 struct bfad_itnim_s* bfad_get_itnim (struct bfad_im_port_s*,int ) ;
 scalar_t__ bfad_im_target_reset_send (struct bfad_s*,struct scsi_cmnd*,struct bfad_itnim_s*) ;
 struct scsi_target* scsi_target (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,unsigned long*) ;
 int wait_event (int ,int ) ;
 int wq ;

__attribute__((used)) static int
bfad_im_reset_target_handler(struct scsi_cmnd *cmnd)
{
 struct Scsi_Host *shost = cmnd->device->host;
 struct scsi_target *starget = scsi_target(cmnd->device);
 struct bfad_im_port_s *im_port =
    (struct bfad_im_port_s *) shost->hostdata[0];
 struct bfad_s *bfad = im_port->bfad;
 struct bfad_itnim_s *itnim;
 unsigned long flags;
 u32 rc, rtn = FAILED;
 DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
 enum bfi_tskim_status task_status;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 itnim = bfad_get_itnim(im_port, starget->id);
 if (itnim) {
  cmnd->SCp.ptr = (char *)&wq;
  rc = bfad_im_target_reset_send(bfad, cmnd, itnim);
  if (rc == BFA_STATUS_OK) {

   spin_unlock_irqrestore(&bfad->bfad_lock, flags);
   wait_event(wq, test_bit(IO_DONE_BIT,
     (unsigned long *)&cmnd->SCp.Status));
   spin_lock_irqsave(&bfad->bfad_lock, flags);

   task_status = cmnd->SCp.Status >> 1;
   if (task_status != BFI_TSKIM_STS_OK)
    BFA_LOG(KERN_ERR, bfad, bfa_log_level,
     "target reset failure,"
     " status: %d\n", task_status);
   else
    rtn = SUCCESS;
  }
 }
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return rtn;
}
