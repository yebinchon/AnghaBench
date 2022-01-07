
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int REG_UTP_TASK_REQ_LIST_RUN_STOP ;
 int REG_UTP_TRANSFER_REQ_LIST_RUN_STOP ;
 int UTP_TASK_REQ_LIST_RUN_STOP_BIT ;
 int UTP_TRANSFER_REQ_LIST_RUN_STOP_BIT ;
 int ufshcd_writel (struct ufs_hba*,int ,int ) ;

__attribute__((used)) static void ufshcd_enable_run_stop_reg(struct ufs_hba *hba)
{
 ufshcd_writel(hba, UTP_TASK_REQ_LIST_RUN_STOP_BIT,
        REG_UTP_TASK_REQ_LIST_RUN_STOP);
 ufshcd_writel(hba, UTP_TRANSFER_REQ_LIST_RUN_STOP_BIT,
        REG_UTP_TRANSFER_REQ_LIST_RUN_STOP);
}
