
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int task_abort; int host_reset; int dev_reset; int suspend_err; int resume_err; int link_startup_err; int fatal_err; int auto_hibern8_err; int dme_err; int tl_err; int nl_err; int dl_err; int pa_err; int hibern8_exit_cnt; int last_hibern8_exit_tstamp; } ;
struct ufs_hba {TYPE_2__* vops; TYPE_1__ ufs_stats; int dev; scalar_t__ outstanding_tasks; scalar_t__ outstanding_reqs; int capabilities; int ufs_version; } ;
struct TYPE_4__ {int (* dbg_register_dump ) (struct ufs_hba*) ;} ;


 int UFSHCI_REG_SPACE_SIZE ;
 int dev_err (int ,char*,int ,int ) ;
 int ktime_to_us (int ) ;
 int stub1 (struct ufs_hba*) ;
 int ufshcd_dump_regs (struct ufs_hba*,int ,int ,char*) ;
 int ufshcd_print_clk_freqs (struct ufs_hba*) ;
 int ufshcd_print_err_hist (struct ufs_hba*,int *,char*) ;

__attribute__((used)) static void ufshcd_print_host_regs(struct ufs_hba *hba)
{
 ufshcd_dump_regs(hba, 0, UFSHCI_REG_SPACE_SIZE, "host_regs: ");
 dev_err(hba->dev, "hba->ufs_version = 0x%x, hba->capabilities = 0x%x\n",
  hba->ufs_version, hba->capabilities);
 dev_err(hba->dev,
  "hba->outstanding_reqs = 0x%x, hba->outstanding_tasks = 0x%x\n",
  (u32)hba->outstanding_reqs, (u32)hba->outstanding_tasks);
 dev_err(hba->dev,
  "last_hibern8_exit_tstamp at %lld us, hibern8_exit_cnt = %d\n",
  ktime_to_us(hba->ufs_stats.last_hibern8_exit_tstamp),
  hba->ufs_stats.hibern8_exit_cnt);

 ufshcd_print_err_hist(hba, &hba->ufs_stats.pa_err, "pa_err");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.dl_err, "dl_err");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.nl_err, "nl_err");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.tl_err, "tl_err");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.dme_err, "dme_err");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.auto_hibern8_err,
         "auto_hibern8_err");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.fatal_err, "fatal_err");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.link_startup_err,
         "link_startup_fail");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.resume_err, "resume_fail");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.suspend_err,
         "suspend_fail");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.dev_reset, "dev_reset");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.host_reset, "host_reset");
 ufshcd_print_err_hist(hba, &hba->ufs_stats.task_abort, "task_abort");

 ufshcd_print_clk_freqs(hba);

 if (hba->vops && hba->vops->dbg_register_dump)
  hba->vops->dbg_register_dump(hba);
}
