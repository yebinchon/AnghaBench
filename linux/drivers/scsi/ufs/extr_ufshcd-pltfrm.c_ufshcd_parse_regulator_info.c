
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_vreg_info {int vccq2; int vccq; int vcc; int vdd_hba; } ;
struct ufs_hba {struct ufs_vreg_info vreg_info; struct device* dev; } ;
struct device {int dummy; } ;


 int ufshcd_populate_vreg (struct device*,char*,int *) ;

__attribute__((used)) static int ufshcd_parse_regulator_info(struct ufs_hba *hba)
{
 int err;
 struct device *dev = hba->dev;
 struct ufs_vreg_info *info = &hba->vreg_info;

 err = ufshcd_populate_vreg(dev, "vdd-hba", &info->vdd_hba);
 if (err)
  goto out;

 err = ufshcd_populate_vreg(dev, "vcc", &info->vcc);
 if (err)
  goto out;

 err = ufshcd_populate_vreg(dev, "vccq", &info->vccq);
 if (err)
  goto out;

 err = ufshcd_populate_vreg(dev, "vccq2", &info->vccq2);
out:
 return err;
}
