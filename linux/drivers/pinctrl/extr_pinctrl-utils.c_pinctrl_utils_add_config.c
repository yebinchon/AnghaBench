
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 unsigned long* krealloc (unsigned long*,int,int ) ;

int pinctrl_utils_add_config(struct pinctrl_dev *pctldev,
  unsigned long **configs, unsigned *num_configs,
  unsigned long config)
{
 unsigned old_num = *num_configs;
 unsigned new_num = old_num + 1;
 unsigned long *new_configs;

 new_configs = krealloc(*configs, sizeof(*new_configs) * new_num,
          GFP_KERNEL);
 if (!new_configs) {
  dev_err(pctldev->dev, "krealloc(configs) failed\n");
  return -ENOMEM;
 }

 new_configs[old_num] = config;

 *configs = new_configs;
 *num_configs = new_num;

 return 0;
}
