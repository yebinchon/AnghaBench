
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {int strict_wide_ports; int num_phys; TYPE_4__ core; int * sas_addr; int lldd_module; int dev; int sas_ha_name; TYPE_2__** sas_phy; int ** sas_port; struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int * sas_addr; int dev; TYPE_3__* phy; TYPE_1__* port; } ;
struct pm8001_chip_info {int n_phy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int * sas_addr; } ;
struct TYPE_7__ {int dev_sas_addr; TYPE_2__ sas_phy; } ;
struct TYPE_5__ {int sas_port; } ;


 int DRV_NAME ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 int THIS_MODULE ;

__attribute__((used)) static void pm8001_post_sas_ha_init(struct Scsi_Host *shost,
         const struct pm8001_chip_info *chip_info)
{
 int i = 0;
 struct pm8001_hba_info *pm8001_ha;
 struct sas_ha_struct *sha = SHOST_TO_SAS_HA(shost);

 pm8001_ha = sha->lldd_ha;
 for (i = 0; i < chip_info->n_phy; i++) {
  sha->sas_phy[i] = &pm8001_ha->phy[i].sas_phy;
  sha->sas_port[i] = &pm8001_ha->port[i].sas_port;
  sha->sas_phy[i]->sas_addr =
   (u8 *)&pm8001_ha->phy[i].dev_sas_addr;
 }
 sha->sas_ha_name = DRV_NAME;
 sha->dev = pm8001_ha->dev;
 sha->strict_wide_ports = 1;
 sha->lldd_module = THIS_MODULE;
 sha->sas_addr = &pm8001_ha->sas_addr[0];
 sha->num_phys = chip_info->n_phy;
 sha->core.shost = shost;
}
