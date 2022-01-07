
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8xxxu_priv {int dummy; } ;


 int RTL8XXXU_MAC_REGS ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int const,int ) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int const,int ) ;

void rtl8xxxu_restore_mac_regs(struct rtl8xxxu_priv *priv,
          const u32 *reg, u32 *backup)
{
 int i;

 for (i = 0; i < (RTL8XXXU_MAC_REGS - 1); i++)
  rtl8xxxu_write8(priv, reg[i], backup[i]);

 rtl8xxxu_write32(priv, reg[i], backup[i]);
}
