
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ufs_hba {int * uic_async_done; TYPE_1__* active_uic_cmd; } ;
struct TYPE_2__ {int done; int argument3; int argument2; } ;


 int UFSHCD_UIC_PWR_MASK ;
 int UIC_COMMAND_COMPL ;
 int complete (int *) ;
 int ufshcd_get_dme_attr_val (struct ufs_hba*) ;
 int ufshcd_get_uic_cmd_result (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_uic_cmd_compl(struct ufs_hba *hba, u32 intr_status)
{
 if ((intr_status & UIC_COMMAND_COMPL) && hba->active_uic_cmd) {
  hba->active_uic_cmd->argument2 |=
   ufshcd_get_uic_cmd_result(hba);
  hba->active_uic_cmd->argument3 =
   ufshcd_get_dme_attr_val(hba);
  complete(&hba->active_uic_cmd->done);
 }

 if ((intr_status & UFSHCD_UIC_PWR_MASK) && hba->uic_async_done)
  complete(hba->uic_async_done);
}
