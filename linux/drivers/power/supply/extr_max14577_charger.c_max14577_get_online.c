
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct regmap {int dummy; } ;
struct max14577_charger {TYPE_1__* max14577; } ;
typedef enum max14577_muic_charger_type { ____Placeholder_max14577_muic_charger_type } max14577_muic_charger_type ;
struct TYPE_2__ {int dev_type; struct regmap* regmap; } ;
 int MAX14577_MUIC_REG_STATUS2 ;


 int STATUS2_CHGTYP_MASK ;
 int STATUS2_CHGTYP_SHIFT ;
 int max14577_read_reg (struct regmap*,int ,int*) ;
 int maxim_get_charger_type (int ,int) ;

__attribute__((used)) static int max14577_get_online(struct max14577_charger *chg, int *val)
{
 struct regmap *rmap = chg->max14577->regmap;
 u8 reg_data;
 int ret;
 enum max14577_muic_charger_type chg_type;

 ret = max14577_read_reg(rmap, MAX14577_MUIC_REG_STATUS2, &reg_data);
 if (ret < 0)
  return ret;

 reg_data = ((reg_data & STATUS2_CHGTYP_MASK) >> STATUS2_CHGTYP_SHIFT);
 chg_type = maxim_get_charger_type(chg->max14577->dev_type, reg_data);
 switch (chg_type) {
 case 130:
 case 136:
 case 131:
 case 132:
 case 137:
 case 128:
  *val = 1;
  break;
 case 134:
 case 135:
 case 133:
 case 129:
 default:
  *val = 0;
 }

 return 0;
}
