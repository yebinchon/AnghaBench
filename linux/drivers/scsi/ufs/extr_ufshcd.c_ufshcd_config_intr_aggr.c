
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ufs_hba {int dummy; } ;


 int INT_AGGR_COUNTER_THLD_VAL (int ) ;
 int INT_AGGR_ENABLE ;
 int INT_AGGR_PARAM_WRITE ;
 int INT_AGGR_TIMEOUT_VAL (int ) ;
 int REG_UTP_TRANSFER_REQ_INT_AGG_CONTROL ;
 int ufshcd_writel (struct ufs_hba*,int,int ) ;

__attribute__((used)) static inline void
ufshcd_config_intr_aggr(struct ufs_hba *hba, u8 cnt, u8 tmout)
{
 ufshcd_writel(hba, INT_AGGR_ENABLE | INT_AGGR_PARAM_WRITE |
        INT_AGGR_COUNTER_THLD_VAL(cnt) |
        INT_AGGR_TIMEOUT_VAL(tmout),
        REG_UTP_TRANSFER_REQ_INT_AGG_CONTROL);
}
