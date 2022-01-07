
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_pmx_bank {unsigned int first; unsigned int last; } ;
struct meson_pinctrl {TYPE_1__* data; } ;
struct meson_axg_pmx_data {int num_pmx_banks; struct meson_pmx_bank* pmx_banks; } ;
struct TYPE_2__ {struct meson_axg_pmx_data* pmx_data; } ;


 int EINVAL ;

__attribute__((used)) static int meson_axg_pmx_get_bank(struct meson_pinctrl *pc,
   unsigned int pin,
   struct meson_pmx_bank **bank)
{
 int i;
 struct meson_axg_pmx_data *pmx = pc->data->pmx_data;

 for (i = 0; i < pmx->num_pmx_banks; i++)
  if (pin >= pmx->pmx_banks[i].first &&
    pin <= pmx->pmx_banks[i].last) {
   *bank = &pmx->pmx_banks[i];
   return 0;
  }

 return -EINVAL;
}
