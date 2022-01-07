
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int POST_CHANGE ;
 int ufshcd_clock_scaling_prepare (struct ufs_hba*) ;
 int ufshcd_clock_scaling_unprepare (struct ufs_hba*) ;
 int ufshcd_hold (struct ufs_hba*,int) ;
 int ufshcd_release (struct ufs_hba*) ;
 int ufshcd_scale_clks (struct ufs_hba*,int) ;
 int ufshcd_scale_gear (struct ufs_hba*,int) ;
 int ufshcd_vops_clk_scale_notify (struct ufs_hba*,int,int ) ;

__attribute__((used)) static int ufshcd_devfreq_scale(struct ufs_hba *hba, bool scale_up)
{
 int ret = 0;


 ufshcd_hold(hba, 0);

 ret = ufshcd_clock_scaling_prepare(hba);
 if (ret)
  return ret;


 if (!scale_up) {
  ret = ufshcd_scale_gear(hba, 0);
  if (ret)
   goto out;
 }

 ret = ufshcd_scale_clks(hba, scale_up);
 if (ret) {
  if (!scale_up)
   ufshcd_scale_gear(hba, 1);
  goto out;
 }


 if (scale_up) {
  ret = ufshcd_scale_gear(hba, 1);
  if (ret) {
   ufshcd_scale_clks(hba, 0);
   goto out;
  }
 }

 ret = ufshcd_vops_clk_scale_notify(hba, scale_up, POST_CHANGE);

out:
 ufshcd_clock_scaling_unprepare(hba);
 ufshcd_release(hba);
 return ret;
}
