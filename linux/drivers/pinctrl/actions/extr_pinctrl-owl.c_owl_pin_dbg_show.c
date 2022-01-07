
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct owl_pinctrl {int dev; } ;


 int dev_name (int ) ;
 struct owl_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void owl_pin_dbg_show(struct pinctrl_dev *pctrldev,
    struct seq_file *s,
    unsigned int offset)
{
 struct owl_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctrldev);

 seq_printf(s, "%s", dev_name(pctrl->dev));
}
