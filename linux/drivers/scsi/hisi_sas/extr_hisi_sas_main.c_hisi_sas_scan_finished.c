
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int dummy; } ;
struct hisi_hba {struct sas_ha_struct sha; } ;
struct Scsi_Host {int dummy; } ;


 unsigned long HZ ;
 int sas_drain_work (struct sas_ha_struct*) ;
 struct hisi_hba* shost_priv (struct Scsi_Host*) ;

int hisi_sas_scan_finished(struct Scsi_Host *shost, unsigned long time)
{
 struct hisi_hba *hisi_hba = shost_priv(shost);
 struct sas_ha_struct *sha = &hisi_hba->sha;


 if (time < HZ)
  return 0;

 sas_drain_work(sha);
 return 1;
}
