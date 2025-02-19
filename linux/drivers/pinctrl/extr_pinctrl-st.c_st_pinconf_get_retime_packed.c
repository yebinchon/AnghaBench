
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_retime_packed {int delay_1; int delay_0; int invertclk; int double_edge; int clknotdata; int clk1notclk0; int retime; } ;
struct TYPE_2__ {struct st_retime_packed rt_p; } ;
struct st_pio_control {TYPE_1__ rt; } ;
struct st_pinctrl {struct st_pctl_data* data; } ;
struct st_pctl_data {int dummy; } ;


 unsigned int BIT (int) ;
 int ST_PINCONF_PACK_RT (unsigned long) ;
 int ST_PINCONF_PACK_RT_CLK (unsigned long,int) ;
 int ST_PINCONF_PACK_RT_CLKNOTDATA (unsigned long) ;
 int ST_PINCONF_PACK_RT_DELAY (unsigned long,unsigned int) ;
 int ST_PINCONF_PACK_RT_DOUBLE_EDGE (unsigned long) ;
 int ST_PINCONF_PACK_RT_INVERTCLK (unsigned long) ;
 int ST_PINCONF_UNPACK_OE (unsigned long) ;
 int regmap_field_read (int ,unsigned int*) ;
 unsigned int st_pinconf_bit_to_delay (unsigned int,struct st_pctl_data const*,int) ;

__attribute__((used)) static int st_pinconf_get_retime_packed(struct st_pinctrl *info,
 struct st_pio_control *pc, int pin, unsigned long *config)
{
 const struct st_pctl_data *data = info->data;
 struct st_retime_packed *rt_p = &pc->rt.rt_p;
 unsigned int delay_bits, delay, delay0, delay1, val;
 int output = ST_PINCONF_UNPACK_OE(*config);

 if (!regmap_field_read(rt_p->retime, &val) && (val & BIT(pin)))
  ST_PINCONF_PACK_RT(*config);

 if (!regmap_field_read(rt_p->clk1notclk0, &val) && (val & BIT(pin)))
  ST_PINCONF_PACK_RT_CLK(*config, 1);

 if (!regmap_field_read(rt_p->clknotdata, &val) && (val & BIT(pin)))
  ST_PINCONF_PACK_RT_CLKNOTDATA(*config);

 if (!regmap_field_read(rt_p->double_edge, &val) && (val & BIT(pin)))
  ST_PINCONF_PACK_RT_DOUBLE_EDGE(*config);

 if (!regmap_field_read(rt_p->invertclk, &val) && (val & BIT(pin)))
  ST_PINCONF_PACK_RT_INVERTCLK(*config);

 regmap_field_read(rt_p->delay_0, &delay0);
 regmap_field_read(rt_p->delay_1, &delay1);
 delay_bits = (((delay1 & BIT(pin)) ? 1 : 0) << 1) |
   (((delay0 & BIT(pin)) ? 1 : 0));
 delay = st_pinconf_bit_to_delay(delay_bits, data, output);
 ST_PINCONF_PACK_RT_DELAY(*config, delay);

 return 0;
}
