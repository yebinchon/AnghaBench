
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {struct mvs_prv_info* lldd_ha; } ;
struct mvs_prv_info {scalar_t__ scan_finished; } ;
struct Scsi_Host {int dummy; } ;


 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 int sas_drain_work (struct sas_ha_struct*) ;

int mvs_scan_finished(struct Scsi_Host *shost, unsigned long time)
{
 struct sas_ha_struct *sha = SHOST_TO_SAS_HA(shost);
 struct mvs_prv_info *mvs_prv = sha->lldd_ha;

 if (mvs_prv->scan_finished == 0)
  return 0;

 sas_drain_work(sha);
 return 1;
}
