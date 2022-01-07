
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_retime_packed {int delay_1; int delay_0; int retime; int invertclk; int double_edge; int clknotdata; int clk1notclk0; } ;
struct TYPE_2__ {struct st_retime_packed rt_p; } ;
struct st_pio_control {TYPE_1__ rt; } ;
struct st_pinctrl {struct st_pctl_data* data; } ;
struct st_pctl_data {int dummy; } ;


 unsigned int ST_PINCONF_UNPACK_RT (unsigned long) ;
 unsigned int ST_PINCONF_UNPACK_RT_CLK (unsigned long) ;
 unsigned int ST_PINCONF_UNPACK_RT_CLKNOTDATA (unsigned long) ;
 int ST_PINCONF_UNPACK_RT_DELAY (unsigned long) ;
 unsigned int ST_PINCONF_UNPACK_RT_DOUBLE_EDGE (unsigned long) ;
 unsigned int ST_PINCONF_UNPACK_RT_INVERTCLK (unsigned long) ;
 unsigned int st_pinconf_delay_to_bit (int ,struct st_pctl_data const*,unsigned long) ;
 int st_regmap_field_bit_set_clear_pin (int ,unsigned int,int) ;

__attribute__((used)) static void st_pinconf_set_retime_packed(struct st_pinctrl *info,
 struct st_pio_control *pc, unsigned long config, int pin)
{
 const struct st_pctl_data *data = info->data;
 struct st_retime_packed *rt_p = &pc->rt.rt_p;
 unsigned int delay;

 st_regmap_field_bit_set_clear_pin(rt_p->clk1notclk0,
    ST_PINCONF_UNPACK_RT_CLK(config), pin);

 st_regmap_field_bit_set_clear_pin(rt_p->clknotdata,
    ST_PINCONF_UNPACK_RT_CLKNOTDATA(config), pin);

 st_regmap_field_bit_set_clear_pin(rt_p->double_edge,
    ST_PINCONF_UNPACK_RT_DOUBLE_EDGE(config), pin);

 st_regmap_field_bit_set_clear_pin(rt_p->invertclk,
    ST_PINCONF_UNPACK_RT_INVERTCLK(config), pin);

 st_regmap_field_bit_set_clear_pin(rt_p->retime,
    ST_PINCONF_UNPACK_RT(config), pin);

 delay = st_pinconf_delay_to_bit(ST_PINCONF_UNPACK_RT_DELAY(config),
     data, config);

 st_regmap_field_bit_set_clear_pin(rt_p->delay_0, delay & 0x1, pin);

 st_regmap_field_bit_set_clear_pin(rt_p->delay_1, delay & 0x2, pin);

}
