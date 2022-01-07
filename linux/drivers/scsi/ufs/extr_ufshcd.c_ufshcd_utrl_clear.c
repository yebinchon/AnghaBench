
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int quirks; } ;


 int REG_UTP_TRANSFER_REQ_LIST_CLEAR ;
 int UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR ;
 int ufshcd_writel (struct ufs_hba*,int,int ) ;

__attribute__((used)) static inline void ufshcd_utrl_clear(struct ufs_hba *hba, u32 pos)
{
 if (hba->quirks & UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR)
  ufshcd_writel(hba, (1 << pos), REG_UTP_TRANSFER_REQ_LIST_CLEAR);
 else
  ufshcd_writel(hba, ~(1 << pos),
    REG_UTP_TRANSFER_REQ_LIST_CLEAR);
}
