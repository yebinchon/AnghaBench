
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_vde {int bsev; } ;


 int ICMDQUE_WR ;
 int tegra_vde_wait_bsev (struct tegra_vde*,int) ;
 int tegra_vde_writel (struct tegra_vde*,int ,int ,int ) ;

__attribute__((used)) static int tegra_vde_push_to_bsev_icmdqueue(struct tegra_vde *vde,
         u32 value, bool wait_dma)
{
 tegra_vde_writel(vde, value, vde->bsev, ICMDQUE_WR);

 return tegra_vde_wait_bsev(vde, wait_dma);
}
