
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wq_name ;
struct TYPE_3__ {int workq; int resume_work; int suspend_work; } ;
struct ufs_hba {TYPE_1__ clk_scaling; TYPE_2__* host; } ;
struct TYPE_4__ {int host_no; } ;


 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int snprintf (char*,int,char*,int) ;
 int ufshcd_clk_scaling_resume_work ;
 int ufshcd_clk_scaling_suspend_work ;
 int ufshcd_clkscaling_init_sysfs (struct ufs_hba*) ;
 int ufshcd_is_clkscaling_supported (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_init_clk_scaling(struct ufs_hba *hba)
{
 char wq_name[sizeof("ufs_clkscaling_00")];

 if (!ufshcd_is_clkscaling_supported(hba))
  return;

 INIT_WORK(&hba->clk_scaling.suspend_work,
    ufshcd_clk_scaling_suspend_work);
 INIT_WORK(&hba->clk_scaling.resume_work,
    ufshcd_clk_scaling_resume_work);

 snprintf(wq_name, sizeof(wq_name), "ufs_clkscaling_%d",
   hba->host->host_no);
 hba->clk_scaling.workq = create_singlethread_workqueue(wq_name);

 ufshcd_clkscaling_init_sysfs(hba);
}
