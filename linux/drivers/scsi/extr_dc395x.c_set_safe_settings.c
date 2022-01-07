
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int safe; int value; } ;


 int CFG_NUM ;
 int KERN_INFO ;
 TYPE_1__* cfg_data ;
 int dprintkl (int ,char*) ;
 scalar_t__ use_safe_settings ;

__attribute__((used)) static void set_safe_settings(void)
{
 if (use_safe_settings)
 {
  int i;

  dprintkl(KERN_INFO, "Using safe settings.\n");
  for (i = 0; i < CFG_NUM; i++)
  {
   cfg_data[i].value = cfg_data[i].safe;
  }
 }
}
