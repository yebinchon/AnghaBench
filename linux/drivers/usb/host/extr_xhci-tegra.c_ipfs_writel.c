
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb {scalar_t__ ipfs_base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void ipfs_writel(struct tegra_xusb *tegra, u32 value,
          unsigned int offset)
{
 writel(value, tegra->ipfs_base + offset);
}
