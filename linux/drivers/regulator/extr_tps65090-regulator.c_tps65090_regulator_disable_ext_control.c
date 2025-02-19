
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tps65090_regulator_plat_data {TYPE_2__* reg_init_data; } ;
struct tps65090_regulator {TYPE_4__* dev; TYPE_1__* desc; } ;
struct device {int dummy; } ;
struct TYPE_8__ {struct device* parent; } ;
struct TYPE_7__ {scalar_t__ boot_on; scalar_t__ always_on; } ;
struct TYPE_6__ {TYPE_3__ constraints; } ;
struct TYPE_5__ {unsigned int enable_reg; } ;


 int dev_err (TYPE_4__*,char*,unsigned int) ;
 int tps65090_config_ext_control (struct tps65090_regulator*,int) ;
 int tps65090_set_bits (struct device*,unsigned int,int ) ;

__attribute__((used)) static int tps65090_regulator_disable_ext_control(
  struct tps65090_regulator *ri,
  struct tps65090_regulator_plat_data *tps_pdata)
{
 int ret = 0;
 struct device *parent = ri->dev->parent;
 unsigned int reg_en_reg = ri->desc->enable_reg;





 if (tps_pdata->reg_init_data->constraints.always_on ||
   tps_pdata->reg_init_data->constraints.boot_on) {
  ret = tps65090_set_bits(parent, reg_en_reg, 0);
  if (ret < 0) {
   dev_err(ri->dev, "Error in set reg 0x%x\n", reg_en_reg);
   return ret;
  }
 }
 return tps65090_config_ext_control(ri, 0);
}
