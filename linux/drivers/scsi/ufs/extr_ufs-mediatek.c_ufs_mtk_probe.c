
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int dev_info (struct device*,char*,int) ;
 int ufs_hba_mtk_vops ;
 int ufshcd_pltfrm_init (struct platform_device*,int *) ;

__attribute__((used)) static int ufs_mtk_probe(struct platform_device *pdev)
{
 int err;
 struct device *dev = &pdev->dev;


 err = ufshcd_pltfrm_init(pdev, &ufs_hba_mtk_vops);
 if (err)
  dev_info(dev, "probe failed %d\n", err);

 return err;
}
