
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_vde {scalar_t__ mbe; } ;


 int readl_relaxed_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int tegra_vde_wait_mbe(struct tegra_vde *vde)
{
 u32 tmp;

 return readl_relaxed_poll_timeout(vde->mbe + 0x8C, tmp,
       (tmp >= 0x10), 1, 100);
}
