
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {int dummy; } ;


 int MPP_GENERAL_CONFIG ;
 unsigned int NAND_GPIO_EN ;
 int gconfmap ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int dove_nand_ctrl_get(struct mvebu_mpp_ctrl_data *data, unsigned pid,
         unsigned long *config)
{
 unsigned int gmpp;

 regmap_read(gconfmap, MPP_GENERAL_CONFIG, &gmpp);
 *config = ((gmpp & NAND_GPIO_EN) != 0);

 return 0;
}
