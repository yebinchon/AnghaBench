
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct Scsi_Host* shost; } ;
struct sas_ha_struct {TYPE_1__ core; struct hisi_hba* lldd_ha; } ;
struct platform_device {int dummy; } ;
struct hisi_hba {int timer; } ;
struct Scsi_Host {int dummy; } ;


 int del_timer (int *) ;
 int hisi_sas_free (struct hisi_hba*) ;
 struct sas_ha_struct* platform_get_drvdata (struct platform_device*) ;
 int sas_remove_host (struct Scsi_Host*) ;
 int sas_unregister_ha (struct sas_ha_struct*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 scalar_t__ timer_pending (int *) ;

int hisi_sas_remove(struct platform_device *pdev)
{
 struct sas_ha_struct *sha = platform_get_drvdata(pdev);
 struct hisi_hba *hisi_hba = sha->lldd_ha;
 struct Scsi_Host *shost = sha->core.shost;

 if (timer_pending(&hisi_hba->timer))
  del_timer(&hisi_hba->timer);

 sas_unregister_ha(sha);
 sas_remove_host(sha->core.shost);

 hisi_sas_free(hisi_hba);
 scsi_host_put(shost);
 return 0;
}
