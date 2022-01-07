
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8xxxu_priv {int dummy; } ;


 int BIT (int) ;
 int REG_FPGA0_IQK ;
 int REG_IQK_AGC_PTS ;
 int REG_IQK_AGC_RSP ;
 int REG_RX_IQK_PI_A ;
 int REG_RX_IQK_TONE_A ;
 int REG_RX_IQK_TONE_B ;
 int REG_RX_POWER_AFTER_IQK_A_2 ;
 int REG_TX_IQK_PI_A ;
 int REG_TX_IQK_TONE_A ;
 int REG_TX_IQK_TONE_B ;
 int REG_TX_POWER_AFTER_IQK_A ;
 int REG_TX_POWER_BEFORE_IQK_A ;
 int RF6052_REG_UNKNOWN_DF ;
 int RF_A ;
 int mdelay (int) ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write_rfreg (struct rtl8xxxu_priv*,int ,int ,int) ;

__attribute__((used)) static int rtl8192eu_iqk_path_a(struct rtl8xxxu_priv *priv)
{
 u32 reg_eac, reg_e94, reg_e9c;
 int result = 0;





 rtl8xxxu_write32(priv, REG_FPGA0_IQK, 0x00000000);
 rtl8xxxu_write_rfreg(priv, RF_A, RF6052_REG_UNKNOWN_DF, 0x00180);
 rtl8xxxu_write32(priv, REG_FPGA0_IQK, 0x80800000);


 rtl8xxxu_write32(priv, REG_TX_IQK_TONE_A, 0x18008c1c);
 rtl8xxxu_write32(priv, REG_RX_IQK_TONE_A, 0x38008c1c);
 rtl8xxxu_write32(priv, REG_TX_IQK_TONE_B, 0x38008c1c);
 rtl8xxxu_write32(priv, REG_RX_IQK_TONE_B, 0x38008c1c);

 rtl8xxxu_write32(priv, REG_TX_IQK_PI_A, 0x82140303);
 rtl8xxxu_write32(priv, REG_RX_IQK_PI_A, 0x68160000);


 rtl8xxxu_write32(priv, REG_IQK_AGC_RSP, 0x00462911);


 rtl8xxxu_write32(priv, REG_IQK_AGC_PTS, 0xf9000000);
 rtl8xxxu_write32(priv, REG_IQK_AGC_PTS, 0xf8000000);

 mdelay(10);


 reg_eac = rtl8xxxu_read32(priv, REG_RX_POWER_AFTER_IQK_A_2);
 reg_e94 = rtl8xxxu_read32(priv, REG_TX_POWER_BEFORE_IQK_A);
 reg_e9c = rtl8xxxu_read32(priv, REG_TX_POWER_AFTER_IQK_A);

 if (!(reg_eac & BIT(28)) &&
     ((reg_e94 & 0x03ff0000) != 0x01420000) &&
     ((reg_e9c & 0x03ff0000) != 0x00420000))
  result |= 0x01;

 return result;
}
