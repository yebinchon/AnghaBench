
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_hba {TYPE_1__* hw; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int (* phys_init ) (struct hisi_hba*) ;} ;


 struct hisi_hba* shost_priv (struct Scsi_Host*) ;
 int stub1 (struct hisi_hba*) ;

void hisi_sas_scan_start(struct Scsi_Host *shost)
{
 struct hisi_hba *hisi_hba = shost_priv(shost);

 hisi_hba->hw->phys_init(hisi_hba);
}
