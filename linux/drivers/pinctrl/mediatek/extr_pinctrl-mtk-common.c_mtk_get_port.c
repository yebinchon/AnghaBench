
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct TYPE_2__ {unsigned long port_mask; unsigned long port_shf; } ;



__attribute__((used)) static unsigned int mtk_get_port(struct mtk_pinctrl *pctl, unsigned long pin)
{

 return ((pin >> 4) & pctl->devdata->port_mask)
   << pctl->devdata->port_shf;
}
