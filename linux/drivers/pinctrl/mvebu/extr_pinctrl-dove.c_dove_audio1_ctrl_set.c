
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {int dummy; } ;


 unsigned int AU1_GPIO_SEL ;
 int AU1_SPDIFO_GPIO_EN ;
 unsigned long BIT (int) ;
 int GLOBAL_CONFIG_2 ;
 int MPP_GENERAL_CONFIG ;
 int SSP_CTRL_STATUS_1 ;
 int SSP_ON_AU1 ;
 int TWSI_OPTION3_GPIO ;
 int gconfmap ;
 int mpp4_base ;
 unsigned int readl (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int dove_audio1_ctrl_set(struct mvebu_mpp_ctrl_data *data, unsigned pid,
    unsigned long config)
{
 unsigned int mpp4 = readl(mpp4_base);

 mpp4 &= ~AU1_GPIO_SEL;
 if (config & BIT(3))
  mpp4 |= AU1_GPIO_SEL;
 writel(mpp4, mpp4_base);

 regmap_update_bits(gconfmap, SSP_CTRL_STATUS_1,
      SSP_ON_AU1,
      (config & BIT(2)) ? SSP_ON_AU1 : 0);
 regmap_update_bits(gconfmap, MPP_GENERAL_CONFIG,
      AU1_SPDIFO_GPIO_EN,
      (config & BIT(1)) ? AU1_SPDIFO_GPIO_EN : 0);
 regmap_update_bits(gconfmap, GLOBAL_CONFIG_2,
      TWSI_OPTION3_GPIO,
      (config & BIT(0)) ? TWSI_OPTION3_GPIO : 0);

 return 0;
}
