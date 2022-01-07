
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dev; } ;
struct ufs_err_reg_hist {int pos; scalar_t__* reg; int * tstamp; } ;


 int UFS_ERR_REG_HIST_LENGTH ;
 int dev_err (int ,char*,char*,...) ;
 int ktime_to_us (int ) ;

__attribute__((used)) static void ufshcd_print_err_hist(struct ufs_hba *hba,
      struct ufs_err_reg_hist *err_hist,
      char *err_name)
{
 int i;
 bool found = 0;

 for (i = 0; i < UFS_ERR_REG_HIST_LENGTH; i++) {
  int p = (i + err_hist->pos) % UFS_ERR_REG_HIST_LENGTH;

  if (err_hist->reg[p] == 0)
   continue;
  dev_err(hba->dev, "%s[%d] = 0x%x at %lld us\n", err_name, p,
   err_hist->reg[p], ktime_to_us(err_hist->tstamp[p]));
  found = 1;
 }

 if (!found)
  dev_err(hba->dev, "No record of %s errors\n", err_name);
}
