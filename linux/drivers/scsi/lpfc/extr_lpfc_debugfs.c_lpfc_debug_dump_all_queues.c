
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int cfg_hdw_queue; } ;


 int DUMP_ELS ;
 int DUMP_IO ;
 int DUMP_MBX ;
 int DUMP_NVMELS ;
 int lpfc_debug_dump_cq (struct lpfc_hba*,int ,int) ;
 int lpfc_debug_dump_dat_rq (struct lpfc_hba*) ;
 int lpfc_debug_dump_hba_eq (struct lpfc_hba*,int) ;
 int lpfc_debug_dump_hdr_rq (struct lpfc_hba*) ;
 int lpfc_debug_dump_wq (struct lpfc_hba*,int ,int) ;

void
lpfc_debug_dump_all_queues(struct lpfc_hba *phba)
{
 int idx;




 lpfc_debug_dump_wq(phba, DUMP_MBX, 0);
 lpfc_debug_dump_wq(phba, DUMP_ELS, 0);
 lpfc_debug_dump_wq(phba, DUMP_NVMELS, 0);

 for (idx = 0; idx < phba->cfg_hdw_queue; idx++)
  lpfc_debug_dump_wq(phba, DUMP_IO, idx);

 lpfc_debug_dump_hdr_rq(phba);
 lpfc_debug_dump_dat_rq(phba);



 lpfc_debug_dump_cq(phba, DUMP_MBX, 0);
 lpfc_debug_dump_cq(phba, DUMP_ELS, 0);
 lpfc_debug_dump_cq(phba, DUMP_NVMELS, 0);

 for (idx = 0; idx < phba->cfg_hdw_queue; idx++)
  lpfc_debug_dump_cq(phba, DUMP_IO, idx);




 for (idx = 0; idx < phba->cfg_hdw_queue; idx++)
  lpfc_debug_dump_hba_eq(phba, idx);
}
