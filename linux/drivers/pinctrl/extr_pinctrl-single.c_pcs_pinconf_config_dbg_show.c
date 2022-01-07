
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int pinconf_generic_dump_config (struct pinctrl_dev*,struct seq_file*,unsigned long) ;

__attribute__((used)) static void pcs_pinconf_config_dbg_show(struct pinctrl_dev *pctldev,
     struct seq_file *s,
     unsigned long config)
{
 pinconf_generic_dump_config(pctldev, s, config);
}
