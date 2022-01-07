
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct ufs_hba {int quirks; unsigned long outstanding_reqs; } ;


 int REG_UTP_TRANSFER_REQ_DOOR_BELL ;
 int UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR ;
 int __ufshcd_transfer_req_compl (struct ufs_hba*,unsigned long) ;
 scalar_t__ ufshcd_is_intr_aggr_allowed (struct ufs_hba*) ;
 unsigned long ufshcd_readl (struct ufs_hba*,int ) ;
 int ufshcd_reset_intr_aggr (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_transfer_req_compl(struct ufs_hba *hba)
{
 unsigned long completed_reqs;
 u32 tr_doorbell;
 if (ufshcd_is_intr_aggr_allowed(hba) &&
     !(hba->quirks & UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR))
  ufshcd_reset_intr_aggr(hba);

 tr_doorbell = ufshcd_readl(hba, REG_UTP_TRANSFER_REQ_DOOR_BELL);
 completed_reqs = tr_doorbell ^ hba->outstanding_reqs;

 __ufshcd_transfer_req_compl(hba, completed_reqs);
}
