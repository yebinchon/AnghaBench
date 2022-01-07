
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mxs_phy {int phy; } ;


 struct mxs_phy* platform_get_drvdata (struct platform_device*) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int mxs_phy_remove(struct platform_device *pdev)
{
 struct mxs_phy *mxs_phy = platform_get_drvdata(pdev);

 usb_remove_phy(&mxs_phy->phy);

 return 0;
}
