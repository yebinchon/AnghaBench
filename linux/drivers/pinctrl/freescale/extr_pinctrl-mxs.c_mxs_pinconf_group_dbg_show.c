
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int mxs_pinconf_group_get (struct pinctrl_dev*,unsigned int,unsigned long*) ;
 int seq_printf (struct seq_file*,char*,unsigned long) ;

__attribute__((used)) static void mxs_pinconf_group_dbg_show(struct pinctrl_dev *pctldev,
           struct seq_file *s, unsigned group)
{
 unsigned long config;

 if (!mxs_pinconf_group_get(pctldev, group, &config))
  seq_printf(s, "0x%lx", config);
}
