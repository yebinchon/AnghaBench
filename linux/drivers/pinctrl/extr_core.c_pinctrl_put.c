
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl {int users; } ;


 int kref_put (int *,int ) ;
 int pinctrl_release ;

void pinctrl_put(struct pinctrl *p)
{
 kref_put(&p->users, pinctrl_release);
}
