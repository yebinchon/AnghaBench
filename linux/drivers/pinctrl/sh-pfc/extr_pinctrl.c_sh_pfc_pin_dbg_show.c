
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int DRV_NAME ;
 int seq_puts (struct seq_file*,int ) ;

__attribute__((used)) static void sh_pfc_pin_dbg_show(struct pinctrl_dev *pctldev, struct seq_file *s,
    unsigned offset)
{
 seq_puts(s, DRV_NAME);
}
