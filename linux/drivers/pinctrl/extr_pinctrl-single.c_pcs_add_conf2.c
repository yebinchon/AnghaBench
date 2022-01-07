
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcs_device {int dummy; } ;
struct pcs_conf_vals {int dummy; } ;
struct device_node {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int add_config (struct pcs_conf_vals**,int,unsigned int,int ,int ,unsigned int) ;
 int add_setting (unsigned long**,int,unsigned int) ;
 int ffs (unsigned int) ;
 int of_property_read_u32_array (struct device_node*,char const*,unsigned int*,int) ;

__attribute__((used)) static void pcs_add_conf2(struct pcs_device *pcs, struct device_node *np,
     const char *name, enum pin_config_param param,
     struct pcs_conf_vals **conf, unsigned long **settings)
{
 unsigned value[2], shift;
 int ret;

 ret = of_property_read_u32_array(np, name, value, 2);
 if (ret)
  return;

 value[0] &= value[1];
 shift = ffs(value[1]) - 1;

 add_config(conf, param, value[0], 0, 0, value[1]);
 add_setting(settings, param, value[0] >> shift);
}
