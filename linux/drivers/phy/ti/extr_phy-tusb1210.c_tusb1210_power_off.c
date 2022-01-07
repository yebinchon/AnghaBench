
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tusb1210 {int gpio_cs; int gpio_reset; } ;
struct phy {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct tusb1210* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int tusb1210_power_off(struct phy *phy)
{
 struct tusb1210 *tusb = phy_get_drvdata(phy);

 gpiod_set_value_cansleep(tusb->gpio_reset, 0);
 gpiod_set_value_cansleep(tusb->gpio_cs, 0);

 return 0;
}
