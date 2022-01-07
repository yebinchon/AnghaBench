
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pinctrl {int dummy; } ;


 int REG_DIR ;
 int meson_pinconf_set_gpio_bit (struct meson_pinctrl*,unsigned int,int ,int) ;

__attribute__((used)) static int meson_pinconf_set_output(struct meson_pinctrl *pc,
        unsigned int pin,
        bool out)
{
 return meson_pinconf_set_gpio_bit(pc, pin, REG_DIR, !out);
}
