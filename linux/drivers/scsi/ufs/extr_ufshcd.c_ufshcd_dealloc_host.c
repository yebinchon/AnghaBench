
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int host; } ;


 int scsi_host_put (int ) ;

void ufshcd_dealloc_host(struct ufs_hba *hba)
{
 scsi_host_put(hba->host);
}
