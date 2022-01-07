
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st21nfca_i2c_phy {scalar_t__ powered; int gpiod_ena; } ;


 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static void st21nfca_hci_i2c_disable(void *phy_id)
{
 struct st21nfca_i2c_phy *phy = phy_id;

 gpiod_set_value(phy->gpiod_ena, 0);

 phy->powered = 0;
}
