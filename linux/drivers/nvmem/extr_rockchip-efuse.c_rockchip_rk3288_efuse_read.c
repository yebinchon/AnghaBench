
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rockchip_efuse_chip {int clk; scalar_t__ base; int dev; } ;


 scalar_t__ REG_EFUSE_CTRL ;
 scalar_t__ REG_EFUSE_DOUT ;
 int RK3288_A_MASK ;
 int RK3288_A_SHIFT ;
 int RK3288_CSB ;
 int RK3288_LOAD ;
 int RK3288_PGENB ;
 int RK3288_STROBE ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int rockchip_rk3288_efuse_read(void *context, unsigned int offset,
          void *val, size_t bytes)
{
 struct rockchip_efuse_chip *efuse = context;
 u8 *buf = val;
 int ret;

 ret = clk_prepare_enable(efuse->clk);
 if (ret < 0) {
  dev_err(efuse->dev, "failed to prepare/enable efuse clk\n");
  return ret;
 }

 writel(RK3288_LOAD | RK3288_PGENB, efuse->base + REG_EFUSE_CTRL);
 udelay(1);
 while (bytes--) {
  writel(readl(efuse->base + REG_EFUSE_CTRL) &
        (~(RK3288_A_MASK << RK3288_A_SHIFT)),
        efuse->base + REG_EFUSE_CTRL);
  writel(readl(efuse->base + REG_EFUSE_CTRL) |
        ((offset++ & RK3288_A_MASK) << RK3288_A_SHIFT),
        efuse->base + REG_EFUSE_CTRL);
  udelay(1);
  writel(readl(efuse->base + REG_EFUSE_CTRL) |
        RK3288_STROBE, efuse->base + REG_EFUSE_CTRL);
  udelay(1);
  *buf++ = readb(efuse->base + REG_EFUSE_DOUT);
  writel(readl(efuse->base + REG_EFUSE_CTRL) &
         (~RK3288_STROBE), efuse->base + REG_EFUSE_CTRL);
  udelay(1);
 }


 writel(RK3288_PGENB | RK3288_CSB, efuse->base + REG_EFUSE_CTRL);

 clk_disable_unprepare(efuse->clk);

 return 0;
}
