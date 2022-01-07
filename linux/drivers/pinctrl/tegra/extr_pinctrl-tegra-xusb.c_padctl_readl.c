
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_padctl {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 padctl_readl(struct tegra_xusb_padctl *padctl,
          unsigned long offset)
{
 return readl(padctl->regs + offset);
}
