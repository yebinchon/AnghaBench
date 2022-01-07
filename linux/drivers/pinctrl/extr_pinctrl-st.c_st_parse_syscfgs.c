
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_pio_control {int rt_pin_mask; void* od; void* pu; void* oe; void* alt; } ;
struct st_pinctrl {struct regmap* regmap; struct device* dev; TYPE_1__* banks; struct st_pctl_data* data; } ;
struct st_pctl_data {int od; int pu; int oe; int alt; } ;
struct regmap {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct st_pio_control pc; } ;


 int ST_GPIO_PINS_PER_BANK ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 void* st_pc_get_value (struct device*,struct regmap*,int,int ,int,int) ;
 int st_pctl_dt_setup_retime (struct st_pinctrl*,int,struct st_pio_control*) ;

__attribute__((used)) static void st_parse_syscfgs(struct st_pinctrl *info, int bank,
        struct device_node *np)
{
 const struct st_pctl_data *data = info->data;





 int lsb = (bank%4) * ST_GPIO_PINS_PER_BANK;
 int msb = lsb + ST_GPIO_PINS_PER_BANK - 1;
 struct st_pio_control *pc = &info->banks[bank].pc;
 struct device *dev = info->dev;
 struct regmap *regmap = info->regmap;

 pc->alt = st_pc_get_value(dev, regmap, bank, data->alt, 0, 31);
 pc->oe = st_pc_get_value(dev, regmap, bank/4, data->oe, lsb, msb);
 pc->pu = st_pc_get_value(dev, regmap, bank/4, data->pu, lsb, msb);
 pc->od = st_pc_get_value(dev, regmap, bank/4, data->od, lsb, msb);


 pc->rt_pin_mask = 0xff;
 of_property_read_u32(np, "st,retime-pin-mask", &pc->rt_pin_mask);
 st_pctl_dt_setup_retime(info, bank, pc);

 return;
}
