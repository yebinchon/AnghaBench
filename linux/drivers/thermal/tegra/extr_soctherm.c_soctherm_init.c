
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_tsensor_group {scalar_t__ id; int pllx_hotspot_diff; int pllx_hotspot_mask; int pdiv; int pdiv_mask; } ;
struct tegra_soctherm {scalar_t__ regs; TYPE_1__* soc; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int num_tsensors; int num_ttgs; struct tegra_tsensor_group** ttgs; } ;


 int REG_SET_MASK (int ,int ,int ) ;
 scalar_t__ SENSOR_HOTSPOT_OFF ;
 scalar_t__ SENSOR_PDIV ;
 scalar_t__ TEGRA124_SOCTHERM_SENSOR_PLLX ;
 int enable_tsensor (struct tegra_soctherm*,int) ;
 struct tegra_soctherm* platform_get_drvdata (struct platform_device*) ;
 int readl (scalar_t__) ;
 int tegra_soctherm_throttle (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void soctherm_init(struct platform_device *pdev)
{
 struct tegra_soctherm *tegra = platform_get_drvdata(pdev);
 const struct tegra_tsensor_group **ttgs = tegra->soc->ttgs;
 int i;
 u32 pdiv, hotspot;


 for (i = 0; i < tegra->soc->num_tsensors; ++i)
  enable_tsensor(tegra, i);


 pdiv = readl(tegra->regs + SENSOR_PDIV);
 hotspot = readl(tegra->regs + SENSOR_HOTSPOT_OFF);
 for (i = 0; i < tegra->soc->num_ttgs; ++i) {
  pdiv = REG_SET_MASK(pdiv, ttgs[i]->pdiv_mask,
        ttgs[i]->pdiv);

  if (ttgs[i]->id == TEGRA124_SOCTHERM_SENSOR_PLLX)
   continue;
  hotspot = REG_SET_MASK(hotspot,
     ttgs[i]->pllx_hotspot_mask,
     ttgs[i]->pllx_hotspot_diff);
 }
 writel(pdiv, tegra->regs + SENSOR_PDIV);
 writel(hotspot, tegra->regs + SENSOR_HOTSPOT_OFF);


 tegra_soctherm_throttle(&pdev->dev);
}
