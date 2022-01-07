
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int host; int scsi_block_reqs_cnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int scsi_unblock_requests (int ) ;

__attribute__((used)) static void ufshcd_scsi_unblock_requests(struct ufs_hba *hba)
{
 if (atomic_dec_and_test(&hba->scsi_block_reqs_cnt))
  scsi_unblock_requests(hba->host);
}
