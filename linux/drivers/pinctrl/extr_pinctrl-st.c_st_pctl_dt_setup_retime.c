
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_pio_control {int dummy; } ;
struct st_pinctrl {struct st_pctl_data* data; } ;
struct st_pctl_data {scalar_t__ rt_style; } ;


 int EINVAL ;
 int st_pctl_dt_setup_retime_dedicated (struct st_pinctrl*,int,struct st_pio_control*) ;
 int st_pctl_dt_setup_retime_packed (struct st_pinctrl*,int,struct st_pio_control*) ;
 scalar_t__ st_retime_style_dedicated ;
 scalar_t__ st_retime_style_packed ;

__attribute__((used)) static int st_pctl_dt_setup_retime(struct st_pinctrl *info,
 int bank, struct st_pio_control *pc)
{
 const struct st_pctl_data *data = info->data;
 if (data->rt_style == st_retime_style_packed)
  return st_pctl_dt_setup_retime_packed(info, bank, pc);
 else if (data->rt_style == st_retime_style_dedicated)
  return st_pctl_dt_setup_retime_dedicated(info, bank, pc);

 return -EINVAL;
}
