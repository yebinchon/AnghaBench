
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int IS_ERR_OR_NULL (scalar_t__) ;
 scalar_t__ WARN_ONCE (int ,char*) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ tegra_flowctrl_base ;
 int wmb () ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void flowctrl_update(u8 offset, u32 value)
{
 if (WARN_ONCE(IS_ERR_OR_NULL(tegra_flowctrl_base),
        "Tegra flowctrl not initialised!\n"))
  return;

 writel(value, tegra_flowctrl_base + offset);


 wmb();
 readl_relaxed(tegra_flowctrl_base + offset);
}
