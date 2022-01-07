
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_fuse {scalar_t__ base; } ;


 scalar_t__ FUSE_BEGIN ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 tegra20_fuse_read_early(struct tegra_fuse *fuse, unsigned int offset)
{
 return readl_relaxed(fuse->base + FUSE_BEGIN + offset);
}
