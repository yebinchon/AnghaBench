
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int nutrs; } ;
struct scsi_device {int host; } ;


 int scsi_change_queue_depth (struct scsi_device*,int) ;
 struct ufs_hba* shost_priv (int ) ;

__attribute__((used)) static int ufshcd_change_queue_depth(struct scsi_device *sdev, int depth)
{
 struct ufs_hba *hba = shost_priv(sdev->host);

 if (depth > hba->nutrs)
  depth = hba->nutrs;
 return scsi_change_queue_depth(sdev, depth);
}
