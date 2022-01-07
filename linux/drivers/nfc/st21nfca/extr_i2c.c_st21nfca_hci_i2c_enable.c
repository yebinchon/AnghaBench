
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st21nfca_i2c_phy {int powered; int run_mode; int gpiod_ena; } ;


 int ST21NFCA_HCI_MODE ;
 int gpiod_set_value (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int st21nfca_hci_i2c_enable(void *phy_id)
{
 struct st21nfca_i2c_phy *phy = phy_id;

 gpiod_set_value(phy->gpiod_ena, 1);
 phy->powered = 1;
 phy->run_mode = ST21NFCA_HCI_MODE;

 usleep_range(10000, 15000);

 return 0;
}
