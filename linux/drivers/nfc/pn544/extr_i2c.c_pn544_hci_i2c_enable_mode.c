
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn544_i2c_phy {int en_polarity; int run_mode; int gpiod_en; int gpiod_fw; } ;


 int PN544_FW_MODE ;
 int gpiod_set_value_cansleep (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void pn544_hci_i2c_enable_mode(struct pn544_i2c_phy *phy, int run_mode)
{
 gpiod_set_value_cansleep(phy->gpiod_fw, run_mode == PN544_FW_MODE ? 1 : 0);
 gpiod_set_value_cansleep(phy->gpiod_en, phy->en_polarity);
 usleep_range(10000, 15000);

 phy->run_mode = run_mode;
}
