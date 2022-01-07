
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dev; } ;


 int dev_name (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void nsp_pin_dbg_show(struct pinctrl_dev *pctrl_dev,
        struct seq_file *s, unsigned int offset)
{
 seq_printf(s, " %s", dev_name(pctrl_dev->dev));
}
