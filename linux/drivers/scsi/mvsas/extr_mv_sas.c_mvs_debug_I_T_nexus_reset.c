
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_phy {int dummy; } ;
struct domain_device {scalar_t__ dev_type; int tproto; } ;


 int SAS_PROTOCOL_STP ;
 scalar_t__ SAS_SATA_DEV ;
 int msleep (int) ;
 struct sas_phy* sas_get_local_phy (struct domain_device*) ;
 int sas_phy_reset (struct sas_phy*,int) ;
 int sas_put_local_phy (struct sas_phy*) ;

__attribute__((used)) static int mvs_debug_I_T_nexus_reset(struct domain_device *dev)
{
 int rc;
 struct sas_phy *phy = sas_get_local_phy(dev);
 int reset_type = (dev->dev_type == SAS_SATA_DEV ||
   (dev->tproto & SAS_PROTOCOL_STP)) ? 0 : 1;
 rc = sas_phy_reset(phy, reset_type);
 sas_put_local_phy(phy);
 msleep(2000);
 return rc;
}
