
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_apq8064_sata_phy {int cfg_clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct qcom_apq8064_sata_phy* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int qcom_apq8064_sata_phy_remove(struct platform_device *pdev)
{
 struct qcom_apq8064_sata_phy *phy = platform_get_drvdata(pdev);

 clk_disable_unprepare(phy->cfg_clk);

 return 0;
}
