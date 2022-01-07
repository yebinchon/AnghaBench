
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* npcm7xx_funcs ;

__attribute__((used)) static const char *npcm7xx_get_function_name(struct pinctrl_dev *pctldev,
          unsigned int function)
{
 return npcm7xx_funcs[function].name;
}
