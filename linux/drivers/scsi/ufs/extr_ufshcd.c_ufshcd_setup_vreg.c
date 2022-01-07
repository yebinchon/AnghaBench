
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_vreg_info {int vcc; int vccq; int vccq2; } ;
struct ufs_hba {struct ufs_vreg_info vreg_info; struct device* dev; } ;
struct device {int dummy; } ;


 int ufshcd_toggle_vreg (struct device*,int ,int) ;

__attribute__((used)) static int ufshcd_setup_vreg(struct ufs_hba *hba, bool on)
{
 int ret = 0;
 struct device *dev = hba->dev;
 struct ufs_vreg_info *info = &hba->vreg_info;

 ret = ufshcd_toggle_vreg(dev, info->vcc, on);
 if (ret)
  goto out;

 ret = ufshcd_toggle_vreg(dev, info->vccq, on);
 if (ret)
  goto out;

 ret = ufshcd_toggle_vreg(dev, info->vccq2, on);
 if (ret)
  goto out;

out:
 if (ret) {
  ufshcd_toggle_vreg(dev, info->vccq2, 0);
  ufshcd_toggle_vreg(dev, info->vccq, 0);
  ufshcd_toggle_vreg(dev, info->vcc, 0);
 }
 return ret;
}
