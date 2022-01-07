
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tusb1210 {scalar_t__ vendor_specific2; int ulpi; int gpio_cs; int gpio_reset; } ;
struct phy {int dummy; } ;


 int TUSB1210_VENDOR_SPECIFIC2 ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct tusb1210* phy_get_drvdata (struct phy*) ;
 int ulpi_write (int ,int ,scalar_t__) ;

__attribute__((used)) static int tusb1210_power_on(struct phy *phy)
{
 struct tusb1210 *tusb = phy_get_drvdata(phy);

 gpiod_set_value_cansleep(tusb->gpio_reset, 1);
 gpiod_set_value_cansleep(tusb->gpio_cs, 1);


 if (tusb->vendor_specific2)
  ulpi_write(tusb->ulpi, TUSB1210_VENDOR_SPECIFIC2,
      tusb->vendor_specific2);

 return 0;
}
