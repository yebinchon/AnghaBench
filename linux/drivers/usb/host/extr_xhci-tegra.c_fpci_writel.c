
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb {scalar_t__ fpci_base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void fpci_writel(struct tegra_xusb *tegra, u32 value,
          unsigned int offset)
{
 writel(value, tegra->fpci_base + offset);
}
