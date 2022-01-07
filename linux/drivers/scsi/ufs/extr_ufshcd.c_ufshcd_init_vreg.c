
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_vreg_info {int vccq2; int vccq; int vcc; } ;
struct ufs_hba {struct ufs_vreg_info vreg_info; struct device* dev; } ;
struct device {int dummy; } ;


 int ufshcd_get_vreg (struct device*,int ) ;

__attribute__((used)) static int ufshcd_init_vreg(struct ufs_hba *hba)
{
 int ret = 0;
 struct device *dev = hba->dev;
 struct ufs_vreg_info *info = &hba->vreg_info;

 ret = ufshcd_get_vreg(dev, info->vcc);
 if (ret)
  goto out;

 ret = ufshcd_get_vreg(dev, info->vccq);
 if (ret)
  goto out;

 ret = ufshcd_get_vreg(dev, info->vccq2);
out:
 return ret;
}
