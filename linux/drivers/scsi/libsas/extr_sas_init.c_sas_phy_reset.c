
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sas_rphy {int dummy; } ;
struct TYPE_8__ {int parent; } ;
struct sas_phy {size_t number; TYPE_4__ dev; int enabled; } ;
struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_6__ {TYPE_1__* shost; } ;
struct sas_ha_struct {TYPE_2__ core; struct asd_sas_phy** sas_phy; } ;
struct domain_device {int dummy; } ;
struct asd_sas_phy {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef enum phy_func { ____Placeholder_phy_func } phy_func ;
struct TYPE_7__ {int (* lldd_control_phy ) (struct asd_sas_phy*,int,int *) ;} ;
struct TYPE_5__ {int transportt; } ;


 int ENODEV ;
 int PHY_FUNC_HARD_RESET ;
 int PHY_FUNC_LINK_RESET ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 struct sas_rphy* dev_to_rphy (int ) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 struct domain_device* sas_find_dev_by_rphy (struct sas_rphy*) ;
 int sas_smp_phy_control (struct domain_device*,size_t,int,int *) ;
 scalar_t__ scsi_is_sas_phy_local (struct sas_phy*) ;
 int stub1 (struct asd_sas_phy*,int,int *) ;
 struct sas_internal* to_sas_internal (int ) ;

int sas_phy_reset(struct sas_phy *phy, int hard_reset)
{
 int ret;
 enum phy_func reset_type;

 if (!phy->enabled)
  return -ENODEV;

 if (hard_reset)
  reset_type = PHY_FUNC_HARD_RESET;
 else
  reset_type = PHY_FUNC_LINK_RESET;

 if (scsi_is_sas_phy_local(phy)) {
  struct Scsi_Host *shost = dev_to_shost(phy->dev.parent);
  struct sas_ha_struct *sas_ha = SHOST_TO_SAS_HA(shost);
  struct asd_sas_phy *asd_phy = sas_ha->sas_phy[phy->number];
  struct sas_internal *i =
   to_sas_internal(sas_ha->core.shost->transportt);

  ret = i->dft->lldd_control_phy(asd_phy, reset_type, ((void*)0));
 } else {
  struct sas_rphy *rphy = dev_to_rphy(phy->dev.parent);
  struct domain_device *ddev = sas_find_dev_by_rphy(rphy);
  ret = sas_smp_phy_control(ddev, phy->number, reset_type, ((void*)0));
 }
 return ret;
}
