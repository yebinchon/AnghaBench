
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdp_i2c_phy {int power_gpio; } ;


 int FDP_POWER_OFF ;
 int FDP_POWER_ON ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void fdp_nci_i2c_reset(struct fdp_i2c_phy *phy)
{

 gpiod_set_value_cansleep(phy->power_gpio, FDP_POWER_OFF);
 usleep_range(1000, 4000);
 gpiod_set_value_cansleep(phy->power_gpio, FDP_POWER_ON);
 usleep_range(10000, 14000);
}
