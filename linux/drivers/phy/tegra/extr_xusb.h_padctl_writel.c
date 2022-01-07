
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_padctl {scalar_t__ regs; int dev; } ;


 int dev_dbg (int ,char*,unsigned long,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void padctl_writel(struct tegra_xusb_padctl *padctl, u32 value,
     unsigned long offset)
{
 dev_dbg(padctl->dev, "%08lx < %08x\n", offset, value);
 writel(value, padctl->regs + offset);
}
