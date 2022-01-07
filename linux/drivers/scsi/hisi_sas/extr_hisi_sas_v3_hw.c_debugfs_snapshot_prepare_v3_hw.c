
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int flags; } ;


 int DLVRY_QUEUE_ENABLE ;
 int HISI_SAS_REJECT_CMD_BIT ;
 int hisi_sas_kill_tasklets (struct hisi_hba*) ;
 int hisi_sas_write32 (struct hisi_hba*,int ,int ) ;
 int set_bit (int ,int *) ;
 int wait_cmds_complete_timeout_v3_hw (struct hisi_hba*,int,int) ;

__attribute__((used)) static void debugfs_snapshot_prepare_v3_hw(struct hisi_hba *hisi_hba)
{
 set_bit(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);

 hisi_sas_write32(hisi_hba, DLVRY_QUEUE_ENABLE, 0);

 wait_cmds_complete_timeout_v3_hw(hisi_hba, 100, 5000);

 hisi_sas_kill_tasklets(hisi_hba);
}
