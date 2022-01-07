
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_usb {int vbus_enable; int set_vbus_work; } ;
struct phy_companion {int dummy; } ;


 struct twl6030_usb* comparator_to_twl (struct phy_companion*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int twl6030_set_vbus(struct phy_companion *comparator, bool enabled)
{
 struct twl6030_usb *twl = comparator_to_twl(comparator);

 twl->vbus_enable = enabled;
 schedule_work(&twl->set_vbus_work);

 return 0;
}
