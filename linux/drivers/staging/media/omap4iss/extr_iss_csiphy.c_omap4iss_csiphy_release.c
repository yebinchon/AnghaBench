
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_csiphy {int mutex; scalar_t__ phy_in_use; } ;


 int CSI2_COMPLEXIO_CFG_PWD_CMD_OFF ;
 int csiphy_set_power (struct iss_csiphy*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void omap4iss_csiphy_release(struct iss_csiphy *phy)
{
 mutex_lock(&phy->mutex);
 if (phy->phy_in_use) {
  csiphy_set_power(phy, CSI2_COMPLEXIO_CFG_PWD_CMD_OFF);
  phy->phy_in_use = 0;
 }
 mutex_unlock(&phy->mutex);
}
