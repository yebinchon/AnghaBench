
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {scalar_t__ chip_id; TYPE_1__* chip; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int (* phy_start_req ) (struct pm8001_hba_info*,int) ;int (* sas_re_init_req ) (struct pm8001_hba_info*) ;} ;
struct TYPE_3__ {int n_phy; } ;


 TYPE_2__* PM8001_CHIP_DISP ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 scalar_t__ chip_8001 ;
 int stub1 (struct pm8001_hba_info*) ;
 int stub2 (struct pm8001_hba_info*,int) ;

void pm8001_scan_start(struct Scsi_Host *shost)
{
 int i;
 struct pm8001_hba_info *pm8001_ha;
 struct sas_ha_struct *sha = SHOST_TO_SAS_HA(shost);
 pm8001_ha = sha->lldd_ha;

 if (pm8001_ha->chip_id == chip_8001)
  PM8001_CHIP_DISP->sas_re_init_req(pm8001_ha);
 for (i = 0; i < pm8001_ha->chip->n_phy; ++i)
  PM8001_CHIP_DISP->phy_start_req(pm8001_ha, i);
}
