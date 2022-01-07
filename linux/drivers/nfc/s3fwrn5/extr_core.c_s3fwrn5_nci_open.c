
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_info {int dummy; } ;
struct nci_dev {int dummy; } ;


 int EBUSY ;
 scalar_t__ S3FWRN5_MODE_COLD ;
 int S3FWRN5_MODE_NCI ;
 struct s3fwrn5_info* nci_get_drvdata (struct nci_dev*) ;
 scalar_t__ s3fwrn5_get_mode (struct s3fwrn5_info*) ;
 int s3fwrn5_set_mode (struct s3fwrn5_info*,int ) ;
 int s3fwrn5_set_wake (struct s3fwrn5_info*,int) ;

__attribute__((used)) static int s3fwrn5_nci_open(struct nci_dev *ndev)
{
 struct s3fwrn5_info *info = nci_get_drvdata(ndev);

 if (s3fwrn5_get_mode(info) != S3FWRN5_MODE_COLD)
  return -EBUSY;

 s3fwrn5_set_mode(info, S3FWRN5_MODE_NCI);
 s3fwrn5_set_wake(info, 1);

 return 0;
}
