
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_csiphy {int phy_in_use; int mutex; int csi2; } ;


 int CSI2_COMPLEXIO_CFG_PWD_CMD_ON ;
 int csiphy_dphy_config (struct iss_csiphy*) ;
 int csiphy_lanes_config (struct iss_csiphy*) ;
 int csiphy_set_power (struct iss_csiphy*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap4iss_csi2_reset (int ) ;

int omap4iss_csiphy_acquire(struct iss_csiphy *phy)
{
 int rval;

 mutex_lock(&phy->mutex);

 rval = omap4iss_csi2_reset(phy->csi2);
 if (rval)
  goto done;

 csiphy_dphy_config(phy);
 csiphy_lanes_config(phy);

 rval = csiphy_set_power(phy, CSI2_COMPLEXIO_CFG_PWD_CMD_ON);
 if (rval)
  goto done;

 phy->phy_in_use = 1;

done:
 mutex_unlock(&phy->mutex);
 return rval;
}
