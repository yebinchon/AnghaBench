
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_mx_efuse {int core_clk; } ;


 int MESON_MX_EFUSE_CNTL1 ;
 int MESON_MX_EFUSE_CNTL1_PD_ENABLE ;
 int clk_disable_unprepare (int ) ;
 int meson_mx_efuse_mask_bits (struct meson_mx_efuse*,int ,int ,int ) ;

__attribute__((used)) static void meson_mx_efuse_hw_disable(struct meson_mx_efuse *efuse)
{
 meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL1,
     MESON_MX_EFUSE_CNTL1_PD_ENABLE,
     MESON_MX_EFUSE_CNTL1_PD_ENABLE);

 clk_disable_unprepare(efuse->core_clk);
}
