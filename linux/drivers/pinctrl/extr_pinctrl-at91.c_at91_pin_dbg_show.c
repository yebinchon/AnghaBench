
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dev; } ;


 int dev_name (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void at91_pin_dbg_show(struct pinctrl_dev *pctldev, struct seq_file *s,
     unsigned offset)
{
 seq_printf(s, "%s", dev_name(pctldev->dev));
}
