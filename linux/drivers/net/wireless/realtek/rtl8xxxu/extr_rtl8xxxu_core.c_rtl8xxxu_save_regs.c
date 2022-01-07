
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8xxxu_priv {int dummy; } ;


 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int const) ;

void rtl8xxxu_save_regs(struct rtl8xxxu_priv *priv, const u32 *regs,
   u32 *backup, int count)
{
 int i;

 for (i = 0; i < count; i++)
  backup[i] = rtl8xxxu_read32(priv, regs[i]);
}
