
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct ks_wlan_private {struct ks_sdio_card* if_hw; } ;
struct ks_sdio_card {struct sdio_func* func; } ;



__attribute__((used)) static struct sdio_func *ks7010_to_func(struct ks_wlan_private *priv)
{
 struct ks_sdio_card *ks_sdio = priv->if_hw;

 return ks_sdio->func;
}
