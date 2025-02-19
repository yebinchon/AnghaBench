
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct s3fwrn5_fw_image {int image_sectors; scalar_t__ image; } ;
struct s3fwrn5_fw_info {int sector_size; TYPE_2__* ndev; scalar_t__ base_addr; int sig_size; int sig; int fw_name; struct s3fwrn5_fw_image fw; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_9__ {struct crypto_shash* tfm; } ;
struct TYPE_8__ {TYPE_1__* nfc_dev; } ;
struct TYPE_7__ {int dev; } ;


 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 int SHA1_DIGEST_SIZE ;
 int SHASH_DESC_ON_STACK (TYPE_3__*,struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 int crypto_shash_digest (TYPE_3__*,scalar_t__,int,int *) ;
 TYPE_3__* desc ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 int s3fwrn5_fw_complete_update_mode (struct s3fwrn5_fw_info*) ;
 int s3fwrn5_fw_enter_update_mode (struct s3fwrn5_fw_info*,int *,int,int ,int ) ;
 int s3fwrn5_fw_update_sector (struct s3fwrn5_fw_info*,scalar_t__,scalar_t__) ;
 int shash_desc_zero (TYPE_3__*) ;

int s3fwrn5_fw_download(struct s3fwrn5_fw_info *fw_info)
{
 struct s3fwrn5_fw_image *fw = &fw_info->fw;
 u8 hash_data[SHA1_DIGEST_SIZE];
 struct crypto_shash *tfm;
 u32 image_size, off;
 int ret;

 image_size = fw_info->sector_size * fw->image_sectors;



 tfm = crypto_alloc_shash("sha1", 0, 0);
 if (IS_ERR(tfm)) {
  ret = PTR_ERR(tfm);
  dev_err(&fw_info->ndev->nfc_dev->dev,
   "Cannot allocate shash (code=%d)\n", ret);
  goto out;
 }

 {
  SHASH_DESC_ON_STACK(desc, tfm);

  desc->tfm = tfm;

  ret = crypto_shash_digest(desc, fw->image, image_size,
       hash_data);
  shash_desc_zero(desc);
 }

 crypto_free_shash(tfm);
 if (ret) {
  dev_err(&fw_info->ndev->nfc_dev->dev,
   "Cannot compute hash (code=%d)\n", ret);
  goto out;
 }



 dev_info(&fw_info->ndev->nfc_dev->dev,
  "Firmware update: %s\n", fw_info->fw_name);

 ret = s3fwrn5_fw_enter_update_mode(fw_info, hash_data,
  SHA1_DIGEST_SIZE, fw_info->sig, fw_info->sig_size);
 if (ret < 0) {
  dev_err(&fw_info->ndev->nfc_dev->dev,
   "Unable to enter update mode\n");
  goto out;
 }

 for (off = 0; off < image_size; off += fw_info->sector_size) {
  ret = s3fwrn5_fw_update_sector(fw_info,
   fw_info->base_addr + off, fw->image + off);
  if (ret < 0) {
   dev_err(&fw_info->ndev->nfc_dev->dev,
    "Firmware update error (code=%d)\n", ret);
   goto out;
  }
 }

 ret = s3fwrn5_fw_complete_update_mode(fw_info);
 if (ret < 0) {
  dev_err(&fw_info->ndev->nfc_dev->dev,
   "Unable to complete update mode\n");
  goto out;
 }

 dev_info(&fw_info->ndev->nfc_dev->dev,
  "Firmware update: success\n");

out:
 return ret;
}
