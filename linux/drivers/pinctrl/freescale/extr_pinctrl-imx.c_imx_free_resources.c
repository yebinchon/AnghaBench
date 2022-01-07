
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_pinctrl {scalar_t__ pctl; } ;


 int pinctrl_unregister (scalar_t__) ;

__attribute__((used)) static void imx_free_resources(struct imx_pinctrl *ipctl)
{
 if (ipctl->pctl)
  pinctrl_unregister(ipctl->pctl);
}
