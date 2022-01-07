
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_hba {struct bnx2fc_hba* tgt_ofld_list; int * cmd_mgr; } ;


 int bnx2fc_cmd_mgr_free (int *) ;
 int bnx2fc_unbind_pcidev (struct bnx2fc_hba*) ;
 int kfree (struct bnx2fc_hba*) ;

__attribute__((used)) static void bnx2fc_hba_destroy(struct bnx2fc_hba *hba)
{

 if (hba->cmd_mgr) {
  bnx2fc_cmd_mgr_free(hba->cmd_mgr);
  hba->cmd_mgr = ((void*)0);
 }
 kfree(hba->tgt_ofld_list);
 bnx2fc_unbind_pcidev(hba);
 kfree(hba);
}
