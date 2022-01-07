
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc2731_charger_info {unsigned int limit; int work; TYPE_1__* usb_phy; } ;
struct TYPE_2__ {scalar_t__ chg_state; } ;


 scalar_t__ USB_CHARGER_PRESENT ;
 int schedule_work (int *) ;
 int usb_phy_get_charger_current (TYPE_1__*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void sc2731_charger_detect_status(struct sc2731_charger_info *info)
{
 unsigned int min, max;






 if (info->usb_phy->chg_state != USB_CHARGER_PRESENT)
  return;

 usb_phy_get_charger_current(info->usb_phy, &min, &max);
 info->limit = min;

 schedule_work(&info->work);
}
