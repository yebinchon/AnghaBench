
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
struct platform_device {int dummy; } ;


 struct ufs_hba* platform_get_drvdata (struct platform_device*) ;
 int ufshcd_remove (struct ufs_hba*) ;

__attribute__((used)) static int cdns_ufs_pltfrm_remove(struct platform_device *pdev)
{
 struct ufs_hba *hba = platform_get_drvdata(pdev);

 ufshcd_remove(hba);
 return 0;
}
