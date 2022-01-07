
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {scalar_t__ ufs_version; } ;


 int INTERRUPT_MASK_RW_VER_10 ;
 int REG_INTERRUPT_ENABLE ;
 scalar_t__ UFSHCI_VERSION_10 ;
 int ufshcd_readl (struct ufs_hba*,int ) ;
 int ufshcd_writel (struct ufs_hba*,int,int ) ;

__attribute__((used)) static void ufshcd_disable_intr(struct ufs_hba *hba, u32 intrs)
{
 u32 set = ufshcd_readl(hba, REG_INTERRUPT_ENABLE);

 if (hba->ufs_version == UFSHCI_VERSION_10) {
  u32 rw;
  rw = (set & INTERRUPT_MASK_RW_VER_10) &
   ~(intrs & INTERRUPT_MASK_RW_VER_10);
  set = rw | ((set & intrs) & ~INTERRUPT_MASK_RW_VER_10);

 } else {
  set &= ~intrs;
 }

 ufshcd_writel(hba, set, REG_INTERRUPT_ENABLE);
}
