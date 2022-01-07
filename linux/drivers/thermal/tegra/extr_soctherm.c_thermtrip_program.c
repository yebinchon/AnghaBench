
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_tsensor_group {int thermtrip_any_en_mask; int thermtrip_enable_mask; int thermtrip_threshold_mask; } ;
struct tegra_soctherm {scalar_t__ regs; TYPE_1__* soc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int thresh_grain; } ;


 int EINVAL ;
 int REG_SET_MASK (int ,int ,int) ;
 scalar_t__ THERMCTL_THERMTRIP_CTL ;
 struct tegra_soctherm* dev_get_drvdata (struct device*) ;
 int enforce_temp_range (struct device*,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int thermtrip_program(struct device *dev,
        const struct tegra_tsensor_group *sg,
        int trip_temp)
{
 struct tegra_soctherm *ts = dev_get_drvdata(dev);
 int temp;
 u32 r;

 if (!sg || !sg->thermtrip_threshold_mask)
  return -EINVAL;

 temp = enforce_temp_range(dev, trip_temp) / ts->soc->thresh_grain;

 r = readl(ts->regs + THERMCTL_THERMTRIP_CTL);
 r = REG_SET_MASK(r, sg->thermtrip_threshold_mask, temp);
 r = REG_SET_MASK(r, sg->thermtrip_enable_mask, 1);
 r = REG_SET_MASK(r, sg->thermtrip_any_en_mask, 0);
 writel(r, ts->regs + THERMCTL_THERMTRIP_CTL);

 return 0;
}
