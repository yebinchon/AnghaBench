
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_err_reg_hist {size_t pos; int * tstamp; int * reg; } ;


 int UFS_ERR_REG_HIST_LENGTH ;
 int ktime_get () ;

__attribute__((used)) static void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
       u32 reg)
{
 reg_hist->reg[reg_hist->pos] = reg;
 reg_hist->tstamp[reg_hist->pos] = ktime_get();
 reg_hist->pos = (reg_hist->pos + 1) % UFS_ERR_REG_HIST_LENGTH;
}
