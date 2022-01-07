
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_pinctrl_function {int name; } ;
struct sunxi_pinctrl {int nfunctions; struct sunxi_pinctrl_function* functions; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static struct sunxi_pinctrl_function *
sunxi_pinctrl_find_function_by_name(struct sunxi_pinctrl *pctl,
        const char *name)
{
 struct sunxi_pinctrl_function *func = pctl->functions;
 int i;

 for (i = 0; i < pctl->nfunctions; i++) {
  if (!func[i].name)
   break;

  if (!strcmp(func[i].name, name))
   return func + i;
 }

 return ((void*)0);
}
