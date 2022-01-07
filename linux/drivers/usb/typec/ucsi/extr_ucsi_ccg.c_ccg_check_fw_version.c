
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u32 ;
struct version_format {int ver; int patch; int build; } ;
struct ucsi_ccg {struct device* dev; } ;
struct TYPE_2__ {int ver; int patch; int build; } ;
struct fw_config_table {float identity; TYPE_1__ app; } ;
struct firmware {int size; int data; } ;
struct device {int dummy; } ;
typedef int fw_cfg ;


 int CCG_VERSION (int ) ;
 int CCG_VERSION_PATCH (int ) ;
 int FW_CFG_TABLE_SIG_SIZE ;
 int ccg_check_vendor_version (struct ucsi_ccg*,struct version_format*,struct fw_config_table*) ;
 int dev_err (struct device*,char*,char const*) ;
 int dev_info (struct device*,char*) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int,int) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,char const*,struct device*) ;

__attribute__((used)) static bool ccg_check_fw_version(struct ucsi_ccg *uc, const char *fw_name,
     struct version_format *app)
{
 const struct firmware *fw = ((void*)0);
 struct device *dev = uc->dev;
 struct fw_config_table fw_cfg;
 u32 cur_version, new_version;
 bool is_later = 0;

 if (request_firmware(&fw, fw_name, dev) != 0) {
  dev_err(dev, "error: Failed to open cyacd file %s\n", fw_name);
  return 0;
 }





 if (fw->size < sizeof(fw_cfg) + FW_CFG_TABLE_SIG_SIZE)
  goto out_release_firmware;

 memcpy((uint8_t *)&fw_cfg, fw->data + fw->size -
        sizeof(fw_cfg) - FW_CFG_TABLE_SIG_SIZE, sizeof(fw_cfg));

 if (fw_cfg.identity != ('F' | 'W' << 8 | 'C' << 16 | 'T' << 24)) {
  dev_info(dev, "not a signed image\n");
  goto out_release_firmware;
 }


 cur_version = le16_to_cpu(app->build) | CCG_VERSION_PATCH(app->patch) |
   CCG_VERSION(app->ver);

 new_version = le16_to_cpu(fw_cfg.app.build) |
   CCG_VERSION_PATCH(fw_cfg.app.patch) |
   CCG_VERSION(fw_cfg.app.ver);

 if (!ccg_check_vendor_version(uc, app, &fw_cfg))
  goto out_release_firmware;

 if (new_version > cur_version)
  is_later = 1;

out_release_firmware:
 release_firmware(fw);
 return is_later;
}
