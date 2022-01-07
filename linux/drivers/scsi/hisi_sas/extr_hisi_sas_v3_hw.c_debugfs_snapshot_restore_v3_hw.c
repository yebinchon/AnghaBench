
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {unsigned long long queue_count; int flags; } ;


 int DLVRY_QUEUE_ENABLE ;
 int HISI_SAS_REJECT_CMD_BIT ;
 int clear_bit (int ,int *) ;
 int hisi_sas_write32 (struct hisi_hba*,int ,int ) ;

__attribute__((used)) static void debugfs_snapshot_restore_v3_hw(struct hisi_hba *hisi_hba)
{
 hisi_sas_write32(hisi_hba, DLVRY_QUEUE_ENABLE,
    (u32)((1ULL << hisi_hba->queue_count) - 1));

 clear_bit(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);
}
