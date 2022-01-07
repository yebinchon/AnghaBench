
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_pinctrl {TYPE_1__* data; } ;
struct meson_bank {unsigned int first; unsigned int last; } ;
struct TYPE_2__ {int num_banks; struct meson_bank* banks; } ;


 int EINVAL ;

__attribute__((used)) static int meson_get_bank(struct meson_pinctrl *pc, unsigned int pin,
     struct meson_bank **bank)
{
 int i;

 for (i = 0; i < pc->data->num_banks; i++) {
  if (pin >= pc->data->banks[i].first &&
      pin <= pc->data->banks[i].last) {
   *bank = &pc->data->banks[i];
   return 0;
  }
 }

 return -EINVAL;
}
