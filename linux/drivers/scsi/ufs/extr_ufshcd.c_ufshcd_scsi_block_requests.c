
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int host; int scsi_block_reqs_cnt; } ;


 int atomic_inc_return (int *) ;
 int scsi_block_requests (int ) ;

__attribute__((used)) static void ufshcd_scsi_block_requests(struct ufs_hba *hba)
{
 if (atomic_inc_return(&hba->scsi_block_reqs_cnt) == 1)
  scsi_block_requests(hba->host);
}
