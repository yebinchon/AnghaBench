
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_clk_scaling {int is_busy_started; scalar_t__ busy_start_t; int tot_busy_t; } ;
struct ufs_hba {int outstanding_reqs; struct ufs_clk_scaling clk_scaling; } ;


 int ktime_get () ;
 int ktime_sub (int ,scalar_t__) ;
 scalar_t__ ktime_to_us (int ) ;
 int ufshcd_is_clkscaling_supported (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_clk_scaling_update_busy(struct ufs_hba *hba)
{
 struct ufs_clk_scaling *scaling = &hba->clk_scaling;

 if (!ufshcd_is_clkscaling_supported(hba))
  return;

 if (!hba->outstanding_reqs && scaling->is_busy_started) {
  scaling->tot_busy_t += ktime_to_us(ktime_sub(ktime_get(),
     scaling->busy_start_t));
  scaling->busy_start_t = 0;
  scaling->is_busy_started = 0;
 }
}
