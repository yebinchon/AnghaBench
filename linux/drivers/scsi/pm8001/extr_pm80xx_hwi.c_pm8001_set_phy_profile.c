
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct pm8001_hba_info {TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ n_phy; } ;


 scalar_t__ PHY_DWORD_LENGTH ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int SAS_PHY_ANALOG_SETTINGS_PAGE ;
 int mpi_set_phy_profile_req (struct pm8001_hba_info*,int ,scalar_t__,scalar_t__,scalar_t__*) ;
 int pm8001_printk (char*) ;

void pm8001_set_phy_profile(struct pm8001_hba_info *pm8001_ha,
 u32 length, u8 *buf)
{
 u32 i;

 for (i = 0; i < pm8001_ha->chip->n_phy; i++) {
  mpi_set_phy_profile_req(pm8001_ha,
   SAS_PHY_ANALOG_SETTINGS_PAGE, i, length, (u32 *)buf);
  length = length + PHY_DWORD_LENGTH;
 }
 PM8001_INIT_DBG(pm8001_ha, pm8001_printk("phy settings completed\n"));
}
