
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct isp1704_charger {int psy; int nb; int phy; } ;


 int isp1704_charger_set_power (struct isp1704_charger*,int ) ;
 struct isp1704_charger* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;
 int usb_unregister_notifier (int ,int *) ;

__attribute__((used)) static int isp1704_charger_remove(struct platform_device *pdev)
{
 struct isp1704_charger *isp = platform_get_drvdata(pdev);

 usb_unregister_notifier(isp->phy, &isp->nb);
 power_supply_unregister(isp->psy);
 isp1704_charger_set_power(isp, 0);

 return 0;
}
