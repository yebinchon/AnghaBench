
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int npcm7xx_funcs ;

__attribute__((used)) static int npcm7xx_get_functions_count(struct pinctrl_dev *pctldev)
{
 return ARRAY_SIZE(npcm7xx_funcs);
}
