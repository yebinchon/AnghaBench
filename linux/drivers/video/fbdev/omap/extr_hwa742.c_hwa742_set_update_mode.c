
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;
struct TYPE_4__ {int update_mode; int stop_auto_update; TYPE_1__* fbdev; int auto_update_timer; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;

 int OMAPFB_EVENT_DISABLED ;
 int OMAPFB_EVENT_READY ;


 int del_timer_sync (int *) ;
 int dev_info (int ,char*,char*) ;
 TYPE_2__ hwa742 ;
 int hwa742_sync () ;
 int hwa742_update_window_auto (int ) ;
 int omapfb_notify_clients (TYPE_1__*,int ) ;

__attribute__((used)) static int hwa742_set_update_mode(enum omapfb_update_mode mode)
{
 if (mode != 129 && mode != 130 &&
     mode != 128)
  return -EINVAL;

 if (mode == hwa742.update_mode)
  return 0;

 dev_info(hwa742.fbdev->dev, "HWA742: setting update mode to %s\n",
   mode == 128 ? "disabled" :
   (mode == 130 ? "auto" : "manual"));

 switch (hwa742.update_mode) {
 case 129:
  omapfb_notify_clients(hwa742.fbdev, OMAPFB_EVENT_DISABLED);
  break;
 case 130:
  hwa742.stop_auto_update = 1;
  del_timer_sync(&hwa742.auto_update_timer);
  break;
 case 128:
  break;
 }

 hwa742.update_mode = mode;
 hwa742_sync();
 hwa742.stop_auto_update = 0;

 switch (mode) {
 case 129:
  omapfb_notify_clients(hwa742.fbdev, OMAPFB_EVENT_READY);
  break;
 case 130:
  hwa742_update_window_auto(0);
  break;
 case 128:
  break;
 }

 return 0;
}
