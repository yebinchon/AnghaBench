
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_mx_efuse {int core_clk; } ;


 int MESON_MX_EFUSE_CNTL1 ;
 int MESON_MX_EFUSE_CNTL1_PD_ENABLE ;
 int MESON_MX_EFUSE_CNTL4 ;
 int MESON_MX_EFUSE_CNTL4_ENCRYPT_ENABLE ;
 int clk_prepare_enable (int ) ;
 int meson_mx_efuse_mask_bits (struct meson_mx_efuse*,int ,int ,int ) ;

__attribute__((used)) static int meson_mx_efuse_hw_enable(struct meson_mx_efuse *efuse)
{
 int err;

 err = clk_prepare_enable(efuse->core_clk);
 if (err)
  return err;


 meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL1,
     MESON_MX_EFUSE_CNTL1_PD_ENABLE, 0);

 meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL4,
     MESON_MX_EFUSE_CNTL4_ENCRYPT_ENABLE, 0);

 return 0;
}
