
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvec_chip {int i2c_addr; int irq; scalar_t__ base; int i2c_clk; int rst; } ;


 scalar_t__ I2C_CNFG ;
 int I2C_CNFG_DEBOUNCE_CNT_SHIFT ;
 int I2C_CNFG_NEW_MASTER_SFM ;
 int I2C_CNFG_PACKET_MODE_EN ;
 scalar_t__ I2C_SL_ADDR1 ;
 scalar_t__ I2C_SL_ADDR2 ;
 scalar_t__ I2C_SL_CNFG ;
 scalar_t__ I2C_SL_DELAY_COUNT ;
 int I2C_SL_NEWSL ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int enable_irq (int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tegra_init_i2c_slave(struct nvec_chip *nvec)
{
 u32 val;

 clk_prepare_enable(nvec->i2c_clk);

 reset_control_assert(nvec->rst);
 udelay(2);
 reset_control_deassert(nvec->rst);

 val = I2C_CNFG_NEW_MASTER_SFM | I2C_CNFG_PACKET_MODE_EN |
     (0x2 << I2C_CNFG_DEBOUNCE_CNT_SHIFT);
 writel(val, nvec->base + I2C_CNFG);

 clk_set_rate(nvec->i2c_clk, 8 * 80000);

 writel(I2C_SL_NEWSL, nvec->base + I2C_SL_CNFG);
 writel(0x1E, nvec->base + I2C_SL_DELAY_COUNT);

 writel(nvec->i2c_addr >> 1, nvec->base + I2C_SL_ADDR1);
 writel(0, nvec->base + I2C_SL_ADDR2);

 enable_irq(nvec->irq);
}
