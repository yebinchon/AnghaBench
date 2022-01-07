
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_info {int ndev; } ;
struct nci_dev {int dummy; } ;


 int S3FWRN5_MODE_NCI ;
 int nci_core_init (int ) ;
 int nci_core_reset (int ) ;
 struct s3fwrn5_info* nci_get_drvdata (struct nci_dev*) ;
 int s3fwrn5_firmware_update (struct s3fwrn5_info*) ;
 int s3fwrn5_set_mode (struct s3fwrn5_info*,int ) ;
 int s3fwrn5_set_wake (struct s3fwrn5_info*,int) ;

__attribute__((used)) static int s3fwrn5_nci_post_setup(struct nci_dev *ndev)
{
 struct s3fwrn5_info *info = nci_get_drvdata(ndev);
 int ret;

 ret = s3fwrn5_firmware_update(info);
 if (ret < 0)
  goto out;



 s3fwrn5_set_mode(info, S3FWRN5_MODE_NCI);
 s3fwrn5_set_wake(info, 1);

 ret = nci_core_reset(info->ndev);
 if (ret < 0)
  goto out;

 ret = nci_core_init(info->ndev);

out:
 return ret;
}
