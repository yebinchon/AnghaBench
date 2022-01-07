
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_info {int dummy; } ;
struct nci_dev {int dummy; } ;


 int S3FWRN5_MODE_COLD ;
 int nci_free_device (struct nci_dev*) ;
 struct s3fwrn5_info* nci_get_drvdata (struct nci_dev*) ;
 int nci_unregister_device (struct nci_dev*) ;
 int s3fwrn5_set_mode (struct s3fwrn5_info*,int ) ;

void s3fwrn5_remove(struct nci_dev *ndev)
{
 struct s3fwrn5_info *info = nci_get_drvdata(ndev);

 s3fwrn5_set_mode(info, S3FWRN5_MODE_COLD);

 nci_unregister_device(ndev);
 nci_free_device(ndev);
}
