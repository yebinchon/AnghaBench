
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sig; int custom_sig; int sig_size; int custom_sig_size; } ;
struct s3fwrn5_fw_info {TYPE_3__ fw; int sig; int sig_size; int sector_size; TYPE_2__* ndev; int base_addr; } ;
struct s3fwrn5_fw_cmd_get_bootinfo_rsp {int sector_size; } ;
struct TYPE_5__ {TYPE_1__* nfc_dev; } ;
struct TYPE_4__ {int dev; } ;


 int dev_err (int *,char*,...) ;
 int s3fwrn5_fw_get_base_addr (struct s3fwrn5_fw_cmd_get_bootinfo_rsp*,int *) ;
 int s3fwrn5_fw_get_bootinfo (struct s3fwrn5_fw_info*,struct s3fwrn5_fw_cmd_get_bootinfo_rsp*) ;
 scalar_t__ s3fwrn5_fw_is_custom (struct s3fwrn5_fw_cmd_get_bootinfo_rsp*) ;
 int s3fwrn5_fw_release_firmware (struct s3fwrn5_fw_info*) ;
 int s3fwrn5_fw_request_firmware (struct s3fwrn5_fw_info*) ;

int s3fwrn5_fw_setup(struct s3fwrn5_fw_info *fw_info)
{
 struct s3fwrn5_fw_cmd_get_bootinfo_rsp bootinfo;
 int ret;



 ret = s3fwrn5_fw_request_firmware(fw_info);
 if (ret < 0) {
  dev_err(&fw_info->ndev->nfc_dev->dev,
   "Failed to get fw file, ret=%02x\n", ret);
  return ret;
 }



 ret = s3fwrn5_fw_get_bootinfo(fw_info, &bootinfo);
 if (ret < 0) {
  dev_err(&fw_info->ndev->nfc_dev->dev,
   "Failed to get bootinfo, ret=%02x\n", ret);
  goto err;
 }



 ret = s3fwrn5_fw_get_base_addr(&bootinfo, &fw_info->base_addr);
 if (ret < 0) {
  dev_err(&fw_info->ndev->nfc_dev->dev,
   "Unknown hardware version\n");
  goto err;
 }

 fw_info->sector_size = bootinfo.sector_size;

 fw_info->sig_size = s3fwrn5_fw_is_custom(&bootinfo) ?
  fw_info->fw.custom_sig_size : fw_info->fw.sig_size;
 fw_info->sig = s3fwrn5_fw_is_custom(&bootinfo) ?
  fw_info->fw.custom_sig : fw_info->fw.sig;

 return 0;

err:
 s3fwrn5_fw_release_firmware(fw_info);
 return ret;
}
