
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rtl8xxxu_priv {int * mac_addr; } ;


 int ETH_ALEN ;
 scalar_t__ REG_MACID ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,scalar_t__,int ) ;

__attribute__((used)) static int rtl8xxxu_set_mac(struct rtl8xxxu_priv *priv)
{
 int i;
 u16 reg;

 reg = REG_MACID;

 for (i = 0; i < ETH_ALEN; i++)
  rtl8xxxu_write8(priv, reg + i, priv->mac_addr[i]);

 return 0;
}
