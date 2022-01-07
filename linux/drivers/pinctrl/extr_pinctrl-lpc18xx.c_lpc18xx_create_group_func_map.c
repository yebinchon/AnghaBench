
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct lpc18xx_scu_data {TYPE_1__* func; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int ngroups; int * groups; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENOMEM ;
 int FUNC_MAX ;
 int GFP_KERNEL ;
 int * devm_kcalloc (struct device*,int,int,int ) ;
 TYPE_2__* lpc18xx_pins ;
 scalar_t__ lpc18xx_valid_pin_function (int,int) ;

__attribute__((used)) static int lpc18xx_create_group_func_map(struct device *dev,
      struct lpc18xx_scu_data *scu)
{
 u16 pins[ARRAY_SIZE(lpc18xx_pins)];
 int func, ngroups, i;

 for (func = 0; func < FUNC_MAX; func++) {
  for (ngroups = 0, i = 0; i < ARRAY_SIZE(lpc18xx_pins); i++) {
   if (lpc18xx_valid_pin_function(i, func))
    pins[ngroups++] = i;
  }

  scu->func[func].ngroups = ngroups;
  scu->func[func].groups = devm_kcalloc(dev,
            ngroups, sizeof(char *),
            GFP_KERNEL);
  if (!scu->func[func].groups)
   return -ENOMEM;

  for (i = 0; i < ngroups; i++)
   scu->func[func].groups[i] = lpc18xx_pins[pins[i]].name;
 }

 return 0;
}
