
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int ufshcd_tmc_handler (struct ufs_hba*) ;
 int ufshcd_transfer_req_compl (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_complete_requests(struct ufs_hba *hba)
{
 ufshcd_transfer_req_compl(hba);
 ufshcd_tmc_handler(hba);
}
