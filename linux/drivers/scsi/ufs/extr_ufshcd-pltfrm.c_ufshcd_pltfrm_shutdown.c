
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ platform_get_drvdata (struct platform_device*) ;
 int ufshcd_shutdown (struct ufs_hba*) ;

void ufshcd_pltfrm_shutdown(struct platform_device *pdev)
{
 ufshcd_shutdown((struct ufs_hba *)platform_get_drvdata(pdev));
}
