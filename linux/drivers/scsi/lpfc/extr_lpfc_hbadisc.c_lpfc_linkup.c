
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct lpfc_hba {int max_vports; int defer_flogi_acc_flag; int hba_flag; TYPE_1__* pport; int fabric_block_timer; int bit_flags; int link_state; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_2__ {scalar_t__ rcv_flogi_cnt; } ;


 int FABRIC_COMANDS_BLOCKED ;
 int HBA_FLOGI_ISSUED ;
 int LPFC_LINK_UP ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_linkup_port (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (TYPE_1__*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int
lpfc_linkup(struct lpfc_hba *phba)
{
 struct lpfc_vport **vports;
 int i;
 struct Scsi_Host *shost = lpfc_shost_from_vport(phba->pport);

 phba->link_state = LPFC_LINK_UP;


 clear_bit(FABRIC_COMANDS_BLOCKED, &phba->bit_flags);
 del_timer_sync(&phba->fabric_block_timer);

 vports = lpfc_create_vport_work_array(phba);
 if (vports != ((void*)0))
  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++)
   lpfc_linkup_port(vports[i]);
 lpfc_destroy_vport_work_array(phba, vports);





 spin_lock_irq(shost->host_lock);
 phba->pport->rcv_flogi_cnt = 0;
 spin_unlock_irq(shost->host_lock);


 phba->hba_flag &= ~(HBA_FLOGI_ISSUED);
 phba->defer_flogi_acc_flag = 0;

 return 0;
}
