
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8xxxu_priv {int dummy; } ;


 int BIT (int) ;
 scalar_t__ REG_FPGA0_IQK ;
 scalar_t__ REG_NHM_TH3_TO_TH0_8723B ;
 scalar_t__ REG_NHM_TH7_TO_TH4_8723B ;
 scalar_t__ REG_NHM_TH9_TH10_8723B ;
 scalar_t__ REG_NHM_TIMER_8723B ;
 scalar_t__ REG_OFDM0_FA_RSTC ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,scalar_t__) ;
 int rtl8xxxu_write16 (struct rtl8xxxu_priv*,scalar_t__,int) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,scalar_t__,int) ;

__attribute__((used)) static void rtl8723bu_init_statistics(struct rtl8xxxu_priv *priv)
{
 u32 val32;


 rtl8xxxu_write16(priv, REG_NHM_TIMER_8723B + 2, 0x2710);
 rtl8xxxu_write16(priv, REG_NHM_TH9_TH10_8723B + 2, 0xffff);
 rtl8xxxu_write32(priv, REG_NHM_TH3_TO_TH0_8723B, 0xffffff52);
 rtl8xxxu_write32(priv, REG_NHM_TH7_TO_TH4_8723B, 0xffffffff);

 val32 = rtl8xxxu_read32(priv, REG_FPGA0_IQK);
 val32 |= 0xff;
 rtl8xxxu_write32(priv, REG_FPGA0_IQK, val32);

 val32 = rtl8xxxu_read32(priv, REG_NHM_TH9_TH10_8723B);
 val32 |= BIT(8) | BIT(9) | BIT(10);
 rtl8xxxu_write32(priv, REG_NHM_TH9_TH10_8723B, val32);

 val32 = rtl8xxxu_read32(priv, REG_OFDM0_FA_RSTC);
 val32 |= BIT(7);
 rtl8xxxu_write32(priv, REG_OFDM0_FA_RSTC, val32);
}
