
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int name; int timer; int * binary_config; int * header; int * fw; } ;
struct nfcmrvl_private {TYPE_2__ fw_dnld; TYPE_1__* ndev; int dev; } ;
struct TYPE_3__ {int nfc_dev; int cmd_timer; int cmd_cnt; } ;


 int atomic_set (int *,int ) ;
 int del_timer_sync (int *) ;
 int nfc_fw_download_done (int ,int ,scalar_t__) ;
 int nfc_info (int ,char*,scalar_t__) ;
 int nfcmrvl_chip_halt (struct nfcmrvl_private*) ;
 int release_firmware (int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void fw_dnld_over(struct nfcmrvl_private *priv, u32 error)
{
 if (priv->fw_dnld.fw) {
  release_firmware(priv->fw_dnld.fw);
  priv->fw_dnld.fw = ((void*)0);
  priv->fw_dnld.header = ((void*)0);
  priv->fw_dnld.binary_config = ((void*)0);
 }

 atomic_set(&priv->ndev->cmd_cnt, 0);

 if (timer_pending(&priv->ndev->cmd_timer))
  del_timer_sync(&priv->ndev->cmd_timer);

 if (timer_pending(&priv->fw_dnld.timer))
  del_timer_sync(&priv->fw_dnld.timer);

 nfc_info(priv->dev, "FW loading over (%d)]\n", error);

 if (error != 0) {

  nfcmrvl_chip_halt(priv);
 }

 nfc_fw_download_done(priv->ndev->nfc_dev, priv->fw_dnld.name, error);
}
