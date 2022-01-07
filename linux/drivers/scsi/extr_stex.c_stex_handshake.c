
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_hba {scalar_t__ cardtype; unsigned int mu_status; TYPE_1__* host; int reset_waitq; scalar_t__ out_req_cnt; scalar_t__ status_tail; scalar_t__ status_head; scalar_t__ req_tail; scalar_t__ req_head; } ;
struct TYPE_2__ {int host_lock; } ;


 unsigned int MU_STATE_FAILED ;
 unsigned int MU_STATE_RESETTING ;
 unsigned int MU_STATE_STARTED ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ st_P3 ;
 scalar_t__ st_yel ;
 int stex_common_handshake (struct st_hba*) ;
 int stex_ss_handshake (struct st_hba*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int stex_handshake(struct st_hba *hba)
{
 int err;
 unsigned long flags;
 unsigned int mu_status;

 if (hba->cardtype == st_yel || hba->cardtype == st_P3)
  err = stex_ss_handshake(hba);
 else
  err = stex_common_handshake(hba);
 spin_lock_irqsave(hba->host->host_lock, flags);
 mu_status = hba->mu_status;
 if (err == 0) {
  hba->req_head = 0;
  hba->req_tail = 0;
  hba->status_head = 0;
  hba->status_tail = 0;
  hba->out_req_cnt = 0;
  hba->mu_status = MU_STATE_STARTED;
 } else
  hba->mu_status = MU_STATE_FAILED;
 if (mu_status == MU_STATE_RESETTING)
  wake_up_all(&hba->reset_waitq);
 spin_unlock_irqrestore(hba->host->host_lock, flags);
 return err;
}
