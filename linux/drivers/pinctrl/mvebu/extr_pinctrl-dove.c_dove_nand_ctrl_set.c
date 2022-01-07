
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {int dummy; } ;


 int MPP_GENERAL_CONFIG ;
 int NAND_GPIO_EN ;
 int gconfmap ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int dove_nand_ctrl_set(struct mvebu_mpp_ctrl_data *data, unsigned pid,
         unsigned long config)
{
 regmap_update_bits(gconfmap, MPP_GENERAL_CONFIG,
      NAND_GPIO_EN,
      (config) ? NAND_GPIO_EN : 0);
 return 0;
}
