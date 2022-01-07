
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int INT_AGGR_COUNTER_AND_TIMER_RESET ;
 int INT_AGGR_ENABLE ;
 int REG_UTP_TRANSFER_REQ_INT_AGG_CONTROL ;
 int ufshcd_writel (struct ufs_hba*,int,int ) ;

__attribute__((used)) static inline void
ufshcd_reset_intr_aggr(struct ufs_hba *hba)
{
 ufshcd_writel(hba, INT_AGGR_ENABLE |
        INT_AGGR_COUNTER_AND_TIMER_RESET,
        REG_UTP_TRANSFER_REQ_INT_AGG_CONTROL);
}
