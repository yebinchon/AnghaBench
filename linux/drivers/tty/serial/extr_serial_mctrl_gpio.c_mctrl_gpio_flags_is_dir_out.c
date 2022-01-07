
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int GPIOD_FLAGS_BIT_DIR_OUT ;
 TYPE_1__* mctrl_gpios_desc ;

__attribute__((used)) static bool mctrl_gpio_flags_is_dir_out(unsigned int idx)
{
 return mctrl_gpios_desc[idx].flags & GPIOD_FLAGS_BIT_DIR_OUT;
}
