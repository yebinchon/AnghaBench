
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rzn1_pinctrl {TYPE_1__* functions; int dev; struct rzn1_pin_group* groups; } ;
struct rzn1_pin_group {unsigned int npins; int * pin_ids; int * pins; int name; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int LOCK_ALL ;
 int dev_dbg (int ,char*,int ,unsigned int,int ,unsigned int) ;
 struct rzn1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int rzn1_hw_set_lock (struct rzn1_pinctrl*,int ,int ) ;
 int rzn1_set_hw_pin_func (struct rzn1_pinctrl*,int ,int ,int ) ;

__attribute__((used)) static int rzn1_set_mux(struct pinctrl_dev *pctldev, unsigned int selector,
   unsigned int group)
{
 struct rzn1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 struct rzn1_pin_group *grp = &ipctl->groups[group];
 unsigned int i, grp_pins = grp->npins;

 dev_dbg(ipctl->dev, "set mux %s(%d) group %s(%d)\n",
  ipctl->functions[selector].name, selector, grp->name, group);

 rzn1_hw_set_lock(ipctl, LOCK_ALL, LOCK_ALL);
 for (i = 0; i < grp_pins; i++)
  rzn1_set_hw_pin_func(ipctl, grp->pins[i], grp->pin_ids[i], 0);
 rzn1_hw_set_lock(ipctl, LOCK_ALL, 0);

 return 0;
}
