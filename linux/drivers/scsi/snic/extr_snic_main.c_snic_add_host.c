
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct Scsi_Host {int host_no; int * work_q; int work_q_name; } ;


 int ENOMEM ;
 int SNIC_BUG_ON (int ) ;
 int SNIC_HOST_ERR (struct Scsi_Host*,char*,...) ;
 int * create_singlethread_workqueue (int ) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int
snic_add_host(struct Scsi_Host *shost, struct pci_dev *pdev)
{
 int ret = 0;

 ret = scsi_add_host(shost, &pdev->dev);
 if (ret) {
  SNIC_HOST_ERR(shost,
         "snic: scsi_add_host failed. %d\n",
         ret);

  return ret;
 }

 SNIC_BUG_ON(shost->work_q != ((void*)0));
 snprintf(shost->work_q_name, sizeof(shost->work_q_name), "scsi_wq_%d",
   shost->host_no);
 shost->work_q = create_singlethread_workqueue(shost->work_q_name);
 if (!shost->work_q) {
  SNIC_HOST_ERR(shost, "Failed to Create ScsiHost wq.\n");

  ret = -ENOMEM;
 }

 return ret;
}
