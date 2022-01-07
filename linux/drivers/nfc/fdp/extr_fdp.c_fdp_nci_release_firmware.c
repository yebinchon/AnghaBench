
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
struct fdp_nci_info {int * ram_patch; int * otp_patch; } ;


 struct fdp_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int release_firmware (int *) ;

__attribute__((used)) static void fdp_nci_release_firmware(struct nci_dev *ndev)
{
 struct fdp_nci_info *info = nci_get_drvdata(ndev);

 if (info->otp_patch) {
  release_firmware(info->otp_patch);
  info->otp_patch = ((void*)0);
 }

 if (info->ram_patch) {
  release_firmware(info->ram_patch);
  info->ram_patch = ((void*)0);
 }
}
