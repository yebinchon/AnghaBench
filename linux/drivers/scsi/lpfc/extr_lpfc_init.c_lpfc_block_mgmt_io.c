
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int sli_flag; TYPE_4__* mbox_active; } ;
struct lpfc_hba {TYPE_3__ sli; int hbalock; } ;
struct TYPE_5__ {int mbxCommand; } ;
struct TYPE_6__ {TYPE_1__ mb; } ;
struct TYPE_8__ {TYPE_2__ u; } ;


 int KERN_ERR ;
 int LOG_SLI ;
 int LPFC_BLOCK_MGMT_IO ;
 int LPFC_MBOX_TMO ;
 int LPFC_MBX_NO_WAIT ;
 int MBX_HEARTBEAT ;
 int jiffies ;
 int lpfc_mbox_tmo_val (struct lpfc_hba*,TYPE_4__*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (int ,unsigned long) ;

__attribute__((used)) static void
lpfc_block_mgmt_io(struct lpfc_hba *phba, int mbx_action)
{
 unsigned long iflag;
 uint8_t actcmd = MBX_HEARTBEAT;
 unsigned long timeout;

 spin_lock_irqsave(&phba->hbalock, iflag);
 phba->sli.sli_flag |= LPFC_BLOCK_MGMT_IO;
 spin_unlock_irqrestore(&phba->hbalock, iflag);
 if (mbx_action == LPFC_MBX_NO_WAIT)
  return;
 timeout = msecs_to_jiffies(LPFC_MBOX_TMO * 1000) + jiffies;
 spin_lock_irqsave(&phba->hbalock, iflag);
 if (phba->sli.mbox_active) {
  actcmd = phba->sli.mbox_active->u.mb.mbxCommand;



  timeout = msecs_to_jiffies(lpfc_mbox_tmo_val(phba,
    phba->sli.mbox_active) * 1000) + jiffies;
 }
 spin_unlock_irqrestore(&phba->hbalock, iflag);


 while (phba->sli.mbox_active) {

  msleep(2);
  if (time_after(jiffies, timeout)) {
   lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2813 Mgmt IO is Blocked %x "
    "- mbox cmd %x still active\n",
    phba->sli.sli_flag, actcmd);
   break;
  }
 }
}
