
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pinctrl {int dummy; } ;


 int meson_pinconf_set_drive (struct meson_pinctrl*,unsigned int,int) ;
 int meson_pinconf_set_output (struct meson_pinctrl*,unsigned int,int) ;

__attribute__((used)) static int meson_pinconf_set_output_drive(struct meson_pinctrl *pc,
       unsigned int pin,
       bool high)
{
 int ret;

 ret = meson_pinconf_set_output(pc, pin, 1);
 if (ret)
  return ret;

 return meson_pinconf_set_drive(pc, pin, high);
}
