
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int clk_list_head; int dev_ref_clk_freq; struct device* dev; struct Scsi_Host* host; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int REF_CLK_FREQ_INVAL ;
 int dev_err (struct device*,char*) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 struct ufs_hba* shost_priv (struct Scsi_Host*) ;
 int ufshcd_driver_template ;

int ufshcd_alloc_host(struct device *dev, struct ufs_hba **hba_handle)
{
 struct Scsi_Host *host;
 struct ufs_hba *hba;
 int err = 0;

 if (!dev) {
  dev_err(dev,
  "Invalid memory reference for dev is NULL\n");
  err = -ENODEV;
  goto out_error;
 }

 host = scsi_host_alloc(&ufshcd_driver_template,
    sizeof(struct ufs_hba));
 if (!host) {
  dev_err(dev, "scsi_host_alloc failed\n");
  err = -ENOMEM;
  goto out_error;
 }
 hba = shost_priv(host);
 hba->host = host;
 hba->dev = dev;
 *hba_handle = hba;
 hba->dev_ref_clk_freq = REF_CLK_FREQ_INVAL;

 INIT_LIST_HEAD(&hba->clk_list_head);

out_error:
 return err;
}
