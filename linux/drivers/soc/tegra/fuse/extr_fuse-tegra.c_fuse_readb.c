
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u32 ;
struct tegra_fuse {unsigned int (* read ) (struct tegra_fuse*,int ) ;} ;


 int round_down (unsigned int,int) ;
 unsigned int stub1 (struct tegra_fuse*,int ) ;

__attribute__((used)) static u8 fuse_readb(struct tegra_fuse *fuse, unsigned int offset)
{
 u32 val;

 val = fuse->read(fuse, round_down(offset, 4));
 val >>= (offset % 4) * 8;
 val &= 0xff;

 return val;
}
