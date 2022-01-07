
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {TYPE_2__* host; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ shost_dev; } ;


 int ENTER ;
 int LEAVE ;
 int __ipr_remove (struct pci_dev*) ;
 int ipr_dump_attr ;
 int ipr_ioa_async_err_log ;
 int ipr_remove_dump_file (int *,int *) ;
 int ipr_remove_trace_file (int *,int *) ;
 int ipr_trace_attr ;
 struct ipr_ioa_cfg* pci_get_drvdata (struct pci_dev*) ;
 int scsi_remove_host (TYPE_2__*) ;
 int sysfs_remove_bin_file (int *,int *) ;

__attribute__((used)) static void ipr_remove(struct pci_dev *pdev)
{
 struct ipr_ioa_cfg *ioa_cfg = pci_get_drvdata(pdev);

 ENTER;

 ipr_remove_trace_file(&ioa_cfg->host->shost_dev.kobj,
         &ipr_trace_attr);
 ipr_remove_dump_file(&ioa_cfg->host->shost_dev.kobj,
        &ipr_dump_attr);
 sysfs_remove_bin_file(&ioa_cfg->host->shost_dev.kobj,
   &ipr_ioa_async_err_log);
 scsi_remove_host(ioa_cfg->host);

 __ipr_remove(pdev);

 LEAVE;
}
