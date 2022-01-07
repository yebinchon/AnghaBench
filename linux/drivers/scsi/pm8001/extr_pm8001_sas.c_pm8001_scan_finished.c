
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 unsigned long HZ ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 int sas_drain_work (struct sas_ha_struct*) ;

int pm8001_scan_finished(struct Scsi_Host *shost, unsigned long time)
{
 struct sas_ha_struct *ha = SHOST_TO_SAS_HA(shost);



 if (time < HZ)
  return 0;

 sas_drain_work(ha);
 return 1;
}
