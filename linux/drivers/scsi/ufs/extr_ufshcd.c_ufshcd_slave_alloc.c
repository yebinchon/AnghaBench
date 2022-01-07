
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
struct scsi_device {int use_10_for_ms; int allow_restart; int no_report_opcodes; int no_write_same; int host; } ;


 struct ufs_hba* shost_priv (int ) ;
 int ufshcd_get_lu_power_on_wp_status (struct ufs_hba*,struct scsi_device*) ;
 int ufshcd_set_queue_depth (struct scsi_device*) ;

__attribute__((used)) static int ufshcd_slave_alloc(struct scsi_device *sdev)
{
 struct ufs_hba *hba;

 hba = shost_priv(sdev->host);


 sdev->use_10_for_ms = 1;


 sdev->allow_restart = 1;


 sdev->no_report_opcodes = 1;


 sdev->no_write_same = 1;

 ufshcd_set_queue_depth(sdev);

 ufshcd_get_lu_power_on_wp_status(hba, sdev);

 return 0;
}
