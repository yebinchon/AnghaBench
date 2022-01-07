
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn544_i2c_phy {int en_polarity; scalar_t__ powered; int gpiod_en; int gpiod_fw; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void pn544_hci_i2c_disable(void *phy_id)
{
 struct pn544_i2c_phy *phy = phy_id;

 gpiod_set_value_cansleep(phy->gpiod_fw, 0);
 gpiod_set_value_cansleep(phy->gpiod_en, !phy->en_polarity);
 usleep_range(10000, 15000);

 gpiod_set_value_cansleep(phy->gpiod_en, phy->en_polarity);
 usleep_range(10000, 15000);

 gpiod_set_value_cansleep(phy->gpiod_en, !phy->en_polarity);
 usleep_range(10000, 15000);

 phy->powered = 0;
}
