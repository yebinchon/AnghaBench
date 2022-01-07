
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_hba {int flags; int timer; TYPE_1__* hw; int phy_state; int sem; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int (* wait_cmds_complete_timeout ) (struct hisi_hba*,int,int) ;int (* get_phys_state ) (struct hisi_hba*) ;} ;


 int HISI_SAS_REJECT_CMD_BIT ;
 int del_timer_sync (int *) ;
 int down (int *) ;
 int scsi_block_requests (struct Scsi_Host*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct hisi_hba*) ;
 int stub2 (struct hisi_hba*,int,int) ;
 scalar_t__ timer_pending (int *) ;

void hisi_sas_controller_reset_prepare(struct hisi_hba *hisi_hba)
{
 struct Scsi_Host *shost = hisi_hba->shost;

 down(&hisi_hba->sem);
 hisi_hba->phy_state = hisi_hba->hw->get_phys_state(hisi_hba);

 scsi_block_requests(shost);
 hisi_hba->hw->wait_cmds_complete_timeout(hisi_hba, 100, 5000);

 if (timer_pending(&hisi_hba->timer))
  del_timer_sync(&hisi_hba->timer);

 set_bit(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);
}
