
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_rtc_info {scalar_t__ base; } ;


 scalar_t__ TEGRA_RTC_REG_BUSY ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 tegra_rtc_check_busy(struct tegra_rtc_info *info)
{
 return readl(info->base + TEGRA_RTC_REG_BUSY) & 1;
}
