
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct meson_mx_efuse {scalar_t__ base; TYPE_1__ config; } ;


 int FIELD_PREP (int,unsigned int) ;
 scalar_t__ MESON_MX_EFUSE_CNTL1 ;
 int MESON_MX_EFUSE_CNTL1_AUTO_RD_BUSY ;
 int MESON_MX_EFUSE_CNTL1_AUTO_RD_START ;
 int MESON_MX_EFUSE_CNTL1_BYTE_ADDR_MASK ;
 int MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET ;
 scalar_t__ MESON_MX_EFUSE_CNTL2 ;
 int dev_err (int ,char*,unsigned int) ;
 int meson_mx_efuse_mask_bits (struct meson_mx_efuse*,scalar_t__,int,int) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int meson_mx_efuse_read_addr(struct meson_mx_efuse *efuse,
        unsigned int addr, u32 *value)
{
 int err;
 u32 regval;


 regval = FIELD_PREP(MESON_MX_EFUSE_CNTL1_BYTE_ADDR_MASK, addr);
 meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL1,
     MESON_MX_EFUSE_CNTL1_BYTE_ADDR_MASK, regval);


 meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL1,
     MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET,
     MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET);
 meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL1,
     MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET, 0);


 meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL1,
     MESON_MX_EFUSE_CNTL1_AUTO_RD_START,
     MESON_MX_EFUSE_CNTL1_AUTO_RD_START);
 meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL1,
     MESON_MX_EFUSE_CNTL1_AUTO_RD_START, 0);





 readl(efuse->base + MESON_MX_EFUSE_CNTL1);

 err = readl_poll_timeout_atomic(efuse->base + MESON_MX_EFUSE_CNTL1,
   regval,
   (!(regval & MESON_MX_EFUSE_CNTL1_AUTO_RD_BUSY)),
   1, 1000);
 if (err) {
  dev_err(efuse->config.dev,
   "Timeout while reading efuse address %u\n", addr);
  return err;
 }

 *value = readl(efuse->base + MESON_MX_EFUSE_CNTL2);

 return 0;
}
