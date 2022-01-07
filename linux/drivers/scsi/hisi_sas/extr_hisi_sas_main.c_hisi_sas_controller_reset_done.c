
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hisi_hba {TYPE_1__* hw; int flags; int sem; scalar_t__ reject_stp_links_msk; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int (* get_phys_state ) (struct hisi_hba*) ;int (* phys_init ) (struct hisi_hba*) ;} ;


 int HISI_SAS_REJECT_CMD_BIT ;
 int HISI_SAS_RESET_BIT ;
 int clear_bit (int ,int *) ;
 int hisi_sas_refresh_port_id (struct hisi_hba*) ;
 int hisi_sas_rescan_topology (struct hisi_hba*,int ) ;
 int hisi_sas_reset_init_all_devices (struct hisi_hba*) ;
 int hisi_sas_terminate_stp_reject (struct hisi_hba*) ;
 int msleep (int) ;
 int scsi_unblock_requests (struct Scsi_Host*) ;
 int stub1 (struct hisi_hba*) ;
 int stub2 (struct hisi_hba*) ;
 int up (int *) ;

void hisi_sas_controller_reset_done(struct hisi_hba *hisi_hba)
{
 struct Scsi_Host *shost = hisi_hba->shost;
 u32 state;


 hisi_hba->hw->phys_init(hisi_hba);
 msleep(1000);
 hisi_sas_refresh_port_id(hisi_hba);
 clear_bit(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);

 if (hisi_hba->reject_stp_links_msk)
  hisi_sas_terminate_stp_reject(hisi_hba);
 hisi_sas_reset_init_all_devices(hisi_hba);
 up(&hisi_hba->sem);
 scsi_unblock_requests(shost);
 clear_bit(HISI_SAS_RESET_BIT, &hisi_hba->flags);

 state = hisi_hba->hw->get_phys_state(hisi_hba);
 hisi_sas_rescan_topology(hisi_hba, state);
}
