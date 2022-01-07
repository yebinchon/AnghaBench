
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* choice; unsigned long config; int size; } ;


 TYPE_1__* nmk_cfg_params ;

__attribute__((used)) static int nmk_dt_pin_config(int index, int val, unsigned long *config)
{
 int ret = 0;

 if (nmk_cfg_params[index].choice == ((void*)0))
  *config = nmk_cfg_params[index].config;
 else {

  if (val < nmk_cfg_params[index].size) {
   *config = nmk_cfg_params[index].config |
    nmk_cfg_params[index].choice[val];
  }
 }
 return ret;
}
