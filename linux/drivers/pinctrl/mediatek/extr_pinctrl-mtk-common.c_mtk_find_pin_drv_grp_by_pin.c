
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct mtk_pin_drv_grp {unsigned long pin; } ;
struct TYPE_2__ {int n_pin_drv_grps; struct mtk_pin_drv_grp* pin_drv_grp; } ;



__attribute__((used)) static const struct mtk_pin_drv_grp *mtk_find_pin_drv_grp_by_pin(
  struct mtk_pinctrl *pctl, unsigned long pin) {
 int i;

 for (i = 0; i < pctl->devdata->n_pin_drv_grps; i++) {
  const struct mtk_pin_drv_grp *pin_drv =
    pctl->devdata->pin_drv_grp + i;
  if (pin == pin_drv->pin)
   return pin_drv;
 }

 return ((void*)0);
}
