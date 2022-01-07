
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sdio_func {int dev; } ;
struct ks_wlan_private {int net_dev; } ;
struct ks_sdio_card {struct ks_wlan_private* priv; } ;
struct firmware {int dummy; } ;


 int EBUSY ;
 int EIO ;
 int GCR_A_REG ;
 scalar_t__ GCR_A_RUN ;
 int ROM_FILE ;
 int ks7010_copy_firmware (struct ks_wlan_private*,struct firmware const*) ;
 int ks7010_sdio_readb (struct ks_wlan_private*,int ,scalar_t__*) ;
 struct sdio_func* ks7010_to_func (struct ks_wlan_private*) ;
 int netdev_dbg (int ,char*) ;
 int netdev_err (int ,char*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ks7010_upload_firmware(struct ks_sdio_card *card)
{
 struct ks_wlan_private *priv = card->priv;
 struct sdio_func *func = ks7010_to_func(priv);
 unsigned int n;
 u8 byte = 0;
 int ret;
 const struct firmware *fw_entry = ((void*)0);

 sdio_claim_host(func);


 ret = ks7010_sdio_readb(priv, GCR_A_REG, &byte);
 if (ret)
  goto release_host;
 if (byte == GCR_A_RUN) {
  netdev_dbg(priv->net_dev, "MAC firmware running ...\n");
  ret = -EBUSY;
  goto release_host;
 }

 ret = request_firmware(&fw_entry, ROM_FILE,
          &func->dev);
 if (ret)
  goto release_host;

 ret = ks7010_copy_firmware(priv, fw_entry);
 if (ret)
  goto release_firmware;


 for (n = 0; n < 50; ++n) {
  usleep_range(10000, 11000);
  ret = ks7010_sdio_readb(priv, GCR_A_REG, &byte);
  if (ret)
   goto release_firmware;

  if (byte == GCR_A_RUN)
   break;
 }
 if ((50) <= n) {
  netdev_err(priv->net_dev, "firmware can't start\n");
  ret = -EIO;
  goto release_firmware;
 }

 ret = 0;

 release_firmware:
 release_firmware(fw_entry);
 release_host:
 sdio_release_host(func);

 return ret;
}
