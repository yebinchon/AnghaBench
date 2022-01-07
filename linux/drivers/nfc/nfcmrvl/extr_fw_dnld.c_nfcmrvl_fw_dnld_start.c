
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct nfcmrvl_fw_dnld {int state; struct nfcmrvl_fw const* header; int timer; TYPE_2__* binary_config; TYPE_6__* fw; int name; } ;
struct nfcmrvl_private {scalar_t__ phy; struct nfcmrvl_fw_dnld fw_dnld; TYPE_5__* ndev; TYPE_3__* if_ops; int dev; int support_fw_dnld; } ;
struct TYPE_11__ {int config; } ;
struct TYPE_9__ {scalar_t__ offset; } ;
struct nfcmrvl_fw {scalar_t__ magic; scalar_t__ phy; TYPE_4__ bootrom; TYPE_2__ firmware; TYPE_2__ helper; } ;
struct nci_dev {TYPE_1__* nfc_dev; } ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {int cmd_cnt; } ;
struct TYPE_10__ {int (* nci_update_config ) (struct nfcmrvl_private*,int *) ;} ;
struct TYPE_8__ {int dev; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOTSUPP ;
 int FW_DNLD_TIMEOUT ;
 scalar_t__ NFCMRVL_FW_MAGIC ;
 int STATE_RESET ;
 int atomic_set (int *,int) ;
 int fw_dnld_timeout ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct nfcmrvl_private* nci_get_drvdata (struct nci_dev*) ;
 int nfc_err (int ,char*,char const*,...) ;
 int nfc_info (int ,char*) ;
 int nfcmrvl_chip_reset (struct nfcmrvl_private*) ;
 int release_firmware (TYPE_6__*) ;
 int request_firmware (TYPE_6__**,char const*,int *) ;
 int strcpy (int ,char const*) ;
 int stub1 (struct nfcmrvl_private*,int *) ;
 int timer_setup (int *,int ,int ) ;

int nfcmrvl_fw_dnld_start(struct nci_dev *ndev, const char *firmware_name)
{
 struct nfcmrvl_private *priv = nci_get_drvdata(ndev);
 struct nfcmrvl_fw_dnld *fw_dnld = &priv->fw_dnld;
 int res;

 if (!priv->support_fw_dnld)
  return -ENOTSUPP;

 if (!firmware_name || !firmware_name[0])
  return -EINVAL;

 strcpy(fw_dnld->name, firmware_name);







 res = request_firmware(&fw_dnld->fw, firmware_name,
          &ndev->nfc_dev->dev);
 if (res < 0) {
  nfc_err(priv->dev, "failed to retrieve FW %s", firmware_name);
  return -ENOENT;
 }

 fw_dnld->header = (const struct nfcmrvl_fw *) priv->fw_dnld.fw->data;

 if (fw_dnld->header->magic != NFCMRVL_FW_MAGIC ||
     fw_dnld->header->phy != priv->phy) {
  nfc_err(priv->dev, "bad firmware binary %s magic=0x%x phy=%d",
   firmware_name, fw_dnld->header->magic,
   fw_dnld->header->phy);
  release_firmware(fw_dnld->fw);
  fw_dnld->header = ((void*)0);
  return -EINVAL;
 }

 if (fw_dnld->header->helper.offset != 0) {
  nfc_info(priv->dev, "loading helper");
  fw_dnld->binary_config = &fw_dnld->header->helper;
 } else {
  nfc_info(priv->dev, "loading firmware");
  fw_dnld->binary_config = &fw_dnld->header->firmware;
 }


 timer_setup(&priv->fw_dnld.timer, fw_dnld_timeout, 0);
 mod_timer(&priv->fw_dnld.timer,
    jiffies + msecs_to_jiffies(FW_DNLD_TIMEOUT));


 priv->if_ops->nci_update_config(priv,
     &fw_dnld->header->bootrom.config);


 atomic_set(&priv->ndev->cmd_cnt, 1);


 priv->fw_dnld.state = STATE_RESET;
 nfcmrvl_chip_reset(priv);



 return 0;
}
