
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_padctl {int dev; scalar_t__ regs; } ;


 int dev_dbg (int ,char*,unsigned long,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 padctl_readl(struct tegra_xusb_padctl *padctl,
          unsigned long offset)
{
 u32 value = readl(padctl->regs + offset);
 dev_dbg(padctl->dev, "%08lx > %08x\n", offset, value);
 return value;
}
