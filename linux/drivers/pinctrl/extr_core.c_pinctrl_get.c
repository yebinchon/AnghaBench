
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl {int users; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct pinctrl* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct pinctrl* create_pinctrl (struct device*,int *) ;
 int dev_dbg (struct device*,char*) ;
 struct pinctrl* find_pinctrl (struct device*) ;
 int kref_get (int *) ;

struct pinctrl *pinctrl_get(struct device *dev)
{
 struct pinctrl *p;

 if (WARN_ON(!dev))
  return ERR_PTR(-EINVAL);






 p = find_pinctrl(dev);
 if (p) {
  dev_dbg(dev, "obtain a copy of previously claimed pinctrl\n");
  kref_get(&p->users);
  return p;
 }

 return create_pinctrl(dev, ((void*)0));
}
