
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_thermal {int bpmp; } ;
struct platform_device {int dummy; } ;


 int MRQ_THERMAL ;
 struct tegra_bpmp_thermal* platform_get_drvdata (struct platform_device*) ;
 int tegra_bpmp_free_mrq (int ,int ,struct tegra_bpmp_thermal*) ;

__attribute__((used)) static int tegra_bpmp_thermal_remove(struct platform_device *pdev)
{
 struct tegra_bpmp_thermal *tegra = platform_get_drvdata(pdev);

 tegra_bpmp_free_mrq(tegra->bpmp, MRQ_THERMAL, tegra);

 return 0;
}
