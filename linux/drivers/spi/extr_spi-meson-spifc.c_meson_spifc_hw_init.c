
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_spifc {int regmap; } ;


 int REG_SLAVE ;
 int REG_USER ;
 int SLAVE_OP_MODE ;
 int SLAVE_SW_RST ;
 int USER_CMP_MODE ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void meson_spifc_hw_init(struct meson_spifc *spifc)
{

 regmap_update_bits(spifc->regmap, REG_SLAVE, SLAVE_SW_RST,
      SLAVE_SW_RST);

 regmap_update_bits(spifc->regmap, REG_USER, USER_CMP_MODE, 0);

 regmap_update_bits(spifc->regmap, REG_SLAVE, SLAVE_OP_MODE, 0);
}
