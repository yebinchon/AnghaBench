
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdio_func {int dummy; } ;
struct ks_wlan_private {int net_dev; } ;


 int INT_ENABLE_REG ;
 int INT_GCR_B ;
 int INT_PENDING_REG ;
 int INT_READ_STATUS ;
 int INT_WRITE_STATUS ;
 int ks7010_sdio_writeb (struct ks_wlan_private*,int ,int) ;
 int netdev_err (int ,char*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;

__attribute__((used)) static void ks7010_sdio_init_irqs(struct sdio_func *func,
      struct ks_wlan_private *priv)
{
 u8 byte;
 int ret;






 sdio_claim_host(func);
 ret = ks7010_sdio_writeb(priv, INT_PENDING_REG, 0xff);
 sdio_release_host(func);
 if (ret)
  netdev_err(priv->net_dev, "write INT_PENDING_REG\n");


 byte = (INT_GCR_B | INT_READ_STATUS | INT_WRITE_STATUS);
 sdio_claim_host(func);
 ret = ks7010_sdio_writeb(priv, INT_ENABLE_REG, byte);
 sdio_release_host(func);
 if (ret)
  netdev_err(priv->net_dev, "write INT_ENABLE_REG\n");
}
