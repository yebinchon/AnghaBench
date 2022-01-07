
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trf7970a {int dev; } ;


 int pm_runtime_enable (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_set_active (int ) ;
 int trf7970a_power_up (struct trf7970a*) ;

__attribute__((used)) static int trf7970a_startup(struct trf7970a *trf)
{
 int ret;

 ret = trf7970a_power_up(trf);
 if (ret)
  return ret;

 pm_runtime_set_active(trf->dev);
 pm_runtime_enable(trf->dev);
 pm_runtime_mark_last_busy(trf->dev);

 return 0;
}
