
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl {int dev; } ;


 int WARN_ON (int ) ;
 int devm_pinctrl_match ;
 int devm_pinctrl_release ;
 int devres_release (int ,int ,int ,struct pinctrl*) ;

void devm_pinctrl_put(struct pinctrl *p)
{
 WARN_ON(devres_release(p->dev, devm_pinctrl_release,
          devm_pinctrl_match, p));
}
