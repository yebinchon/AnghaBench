
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_vde {int sxe; int bsev; int decode_completion; } ;


 int reinit_completion (int *) ;
 int tegra_vde_writel (struct tegra_vde*,int,int ,int) ;

__attribute__((used)) static void tegra_vde_decode_frame(struct tegra_vde *vde,
       unsigned int macroblocks_nb)
{
 reinit_completion(&vde->decode_completion);

 tegra_vde_writel(vde, 0x00000001, vde->bsev, 0x8C);
 tegra_vde_writel(vde, 0x20000000 | (macroblocks_nb - 1),
    vde->sxe, 0x00);
}
