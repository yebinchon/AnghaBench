
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_dp_phy {int dev; scalar_t__ base; } ;


 int ETIMEDOUT ;
 scalar_t__ PHY_PMA_CMN_READY ;
 int dev_err (int ,char*) ;
 int readl_poll_timeout (scalar_t__,unsigned int,unsigned int,int ,int) ;

__attribute__((used)) static void cdns_dp_phy_wait_pma_cmn_ready(struct cdns_dp_phy *cdns_phy)
{
 unsigned int reg;
 int ret;

 ret = readl_poll_timeout(cdns_phy->base + PHY_PMA_CMN_READY, reg,
     reg & 1, 0, 500);
 if (ret == -ETIMEDOUT)
  dev_err(cdns_phy->dev,
   "timeout waiting for PMA common ready\n");
}
