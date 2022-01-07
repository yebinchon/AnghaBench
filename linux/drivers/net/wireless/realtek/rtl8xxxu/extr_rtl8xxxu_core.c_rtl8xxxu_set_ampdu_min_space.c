
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8xxxu_priv {int dummy; } ;


 int REG_AMPDU_MIN_SPACE ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int) ;

__attribute__((used)) static void rtl8xxxu_set_ampdu_min_space(struct rtl8xxxu_priv *priv, u8 density)
{
 u8 val8;

 val8 = rtl8xxxu_read8(priv, REG_AMPDU_MIN_SPACE);
 val8 &= 0xf8;
 val8 |= density;
 rtl8xxxu_write8(priv, REG_AMPDU_MIN_SPACE, val8);
}
