
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int auto_update_timer; int stop_auto_update; } ;


 scalar_t__ HWA742_AUTO_UPDATE_TIME ;
 TYPE_1__ hwa742 ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void auto_update_complete(void *data)
{
 if (!hwa742.stop_auto_update)
  mod_timer(&hwa742.auto_update_timer,
     jiffies + HWA742_AUTO_UPDATE_TIME);
}
