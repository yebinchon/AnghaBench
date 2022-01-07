
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable_attr; } ;
struct ufs_hba {TYPE_1__ clk_scaling; int dev; int intr_mask; int host; } ;


 int device_remove_file (int ,int *) ;
 int scsi_remove_host (int ) ;
 int ufs_bsg_remove (struct ufs_hba*) ;
 int ufs_sysfs_remove_nodes (int ) ;
 int ufshcd_disable_intr (struct ufs_hba*,int ) ;
 int ufshcd_exit_clk_gating (struct ufs_hba*) ;
 int ufshcd_exit_clk_scaling (struct ufs_hba*) ;
 int ufshcd_hba_exit (struct ufs_hba*) ;
 int ufshcd_hba_stop (struct ufs_hba*,int) ;
 scalar_t__ ufshcd_is_clkscaling_supported (struct ufs_hba*) ;

void ufshcd_remove(struct ufs_hba *hba)
{
 ufs_bsg_remove(hba);
 ufs_sysfs_remove_nodes(hba->dev);
 scsi_remove_host(hba->host);

 ufshcd_disable_intr(hba, hba->intr_mask);
 ufshcd_hba_stop(hba, 1);

 ufshcd_exit_clk_scaling(hba);
 ufshcd_exit_clk_gating(hba);
 if (ufshcd_is_clkscaling_supported(hba))
  device_remove_file(hba->dev, &hba->clk_scaling.enable_attr);
 ufshcd_hba_exit(hba);
}
