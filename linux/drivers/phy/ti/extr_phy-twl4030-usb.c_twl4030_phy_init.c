
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_usb {int dev; int id_workaround_work; int linkstat; } ;
struct phy {int dummy; } ;


 int HZ ;
 int MUSB_UNKNOWN ;
 struct twl4030_usb* phy_get_drvdata (struct phy*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int twl4030_phy_init(struct phy *phy)
{
 struct twl4030_usb *twl = phy_get_drvdata(phy);

 pm_runtime_get_sync(twl->dev);
 twl->linkstat = MUSB_UNKNOWN;
 schedule_delayed_work(&twl->id_workaround_work, HZ);
 pm_runtime_mark_last_busy(twl->dev);
 pm_runtime_put_autosuspend(twl->dev);

 return 0;
}
