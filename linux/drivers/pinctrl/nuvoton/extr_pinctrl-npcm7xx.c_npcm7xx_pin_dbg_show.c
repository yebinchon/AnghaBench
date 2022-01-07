
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int seq_printf (struct seq_file*,char*,unsigned int) ;

__attribute__((used)) static void npcm7xx_pin_dbg_show(struct pinctrl_dev *pctldev,
     struct seq_file *s, unsigned int offset)
{
 seq_printf(s, "pinctrl_ops.dbg: %d", offset);
}
