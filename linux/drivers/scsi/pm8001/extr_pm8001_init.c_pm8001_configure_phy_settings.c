
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm8001_hba_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int subsystem_vendor; int device; } ;




 int pm8001_get_phy_settings_info (struct pm8001_hba_info*) ;
 int pm8001_set_phy_settings_ven_117c_12G (struct pm8001_hba_info*) ;

__attribute__((used)) static int pm8001_configure_phy_settings(struct pm8001_hba_info *pm8001_ha)
{
 switch (pm8001_ha->pdev->subsystem_vendor) {
 case 128:
  if (pm8001_ha->pdev->device == 0x0042)
   return 0;
  else
   return pm8001_set_phy_settings_ven_117c_12G(pm8001_ha);

 case 129:
 case 0:
  return 0;

 default:
  return pm8001_get_phy_settings_info(pm8001_ha);
 }
}
