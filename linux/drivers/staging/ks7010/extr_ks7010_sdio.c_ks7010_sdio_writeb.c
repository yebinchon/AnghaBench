
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdio_func {int dummy; } ;
struct ks_wlan_private {int dummy; } ;


 struct sdio_func* ks7010_to_func (struct ks_wlan_private*) ;
 int sdio_writeb (struct sdio_func*,int ,int ,int*) ;

__attribute__((used)) static int ks7010_sdio_writeb(struct ks_wlan_private *priv,
         u32 address, u8 byte)
{
 struct sdio_func *func = ks7010_to_func(priv);
 int ret;

 sdio_writeb(func, byte, address, &ret);

 return ret;
}
