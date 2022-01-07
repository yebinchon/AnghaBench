
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct abx500_pinctrl {TYPE_1__* soc; } ;
struct TYPE_4__ {int number; char const* name; } ;
struct TYPE_3__ {int npins; TYPE_2__* pins; } ;


 struct abx500_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static const char *abx500_find_pin_name(struct pinctrl_dev *pctldev,
     const char *pin_name)
{
 int i, pin_number;
 struct abx500_pinctrl *npct = pinctrl_dev_get_drvdata(pctldev);

 if (sscanf((char *)pin_name, "GPIO%d", &pin_number) == 1)
  for (i = 0; i < npct->soc->npins; i++)
   if (npct->soc->pins[i].number == pin_number)
    return npct->soc->pins[i].name;
 return ((void*)0);
}
