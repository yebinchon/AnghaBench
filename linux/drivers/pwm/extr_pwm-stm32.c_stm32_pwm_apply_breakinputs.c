
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pwm {int dummy; } ;
struct stm32_breakinput {int filter; int level; int index; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int MAX_BREAKINPUT ;
 int of_property_count_elems_of_size (struct device_node*,char*,int) ;
 int of_property_read_u32_array (struct device_node*,char*,int *,int) ;
 int stm32_pwm_set_breakinput (struct stm32_pwm*,int ,int ,int ) ;

__attribute__((used)) static int stm32_pwm_apply_breakinputs(struct stm32_pwm *priv,
           struct device_node *np)
{
 struct stm32_breakinput breakinput[MAX_BREAKINPUT];
 int nb, ret, i, array_size;

 nb = of_property_count_elems_of_size(np, "st,breakinput",
          sizeof(struct stm32_breakinput));





 if (nb <= 0)
  return 0;

 if (nb > MAX_BREAKINPUT)
  return -EINVAL;

 array_size = nb * sizeof(struct stm32_breakinput) / sizeof(u32);
 ret = of_property_read_u32_array(np, "st,breakinput",
      (u32 *)breakinput, array_size);
 if (ret)
  return ret;

 for (i = 0; i < nb && !ret; i++) {
  ret = stm32_pwm_set_breakinput(priv,
            breakinput[i].index,
            breakinput[i].level,
            breakinput[i].filter);
 }

 return ret;
}
