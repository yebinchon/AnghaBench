
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb {scalar_t__ ipfs_base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 ipfs_readl(struct tegra_xusb *tegra, unsigned int offset)
{
 return readl(tegra->ipfs_base + offset);
}
