
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
struct platform_device {int dev; } ;


 struct ufs_hba* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_get_sync (int *) ;
 int ufshcd_remove (struct ufs_hba*) ;

__attribute__((used)) static int ufs_mtk_remove(struct platform_device *pdev)
{
 struct ufs_hba *hba = platform_get_drvdata(pdev);

 pm_runtime_get_sync(&(pdev)->dev);
 ufshcd_remove(hba);
 return 0;
}
