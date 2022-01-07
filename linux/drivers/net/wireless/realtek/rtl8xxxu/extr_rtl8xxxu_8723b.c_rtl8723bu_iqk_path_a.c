
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8xxxu_priv {int rf_paths; } ;


 int BIT (int) ;
 int REG_BT_CONTROL_8723BU ;
 int REG_FPGA0_IQK ;
 int REG_IQK_AGC_PTS ;
 int REG_IQK_AGC_RSP ;
 int REG_RX_IQK ;
 int REG_RX_IQK_PI_A ;
 int REG_RX_IQK_PI_B ;
 int REG_RX_IQK_TONE_A ;
 int REG_RX_IQK_TONE_B ;
 int REG_RX_POWER_AFTER_IQK_A_2 ;
 int REG_S0S1_PATH_SWITCH ;
 int REG_TX_IQK ;
 int REG_TX_IQK_PI_A ;
 int REG_TX_IQK_PI_B ;
 int REG_TX_IQK_TONE_A ;
 int REG_TX_IQK_TONE_B ;
 int REG_TX_POWER_AFTER_IQK_A ;
 int REG_TX_POWER_BEFORE_IQK_A ;
 int RF6052_REG_RCK_OS ;
 int RF6052_REG_TXPA_G1 ;
 int RF6052_REG_TXPA_G2 ;
 int RF6052_REG_WE_LUT ;
 int RF_A ;
 int mdelay (int) ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_read_rfreg (struct rtl8xxxu_priv*,int ,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write_rfreg (struct rtl8xxxu_priv*,int ,int ,int) ;

__attribute__((used)) static int rtl8723bu_iqk_path_a(struct rtl8xxxu_priv *priv)
{
 u32 reg_eac, reg_e94, reg_e9c, path_sel, val32;
 int result = 0;

 path_sel = rtl8xxxu_read32(priv, REG_S0S1_PATH_SWITCH);




 val32 = rtl8xxxu_read32(priv, REG_FPGA0_IQK);
 val32 &= 0x000000ff;
 rtl8xxxu_write32(priv, REG_FPGA0_IQK, val32);




 val32 = rtl8xxxu_read_rfreg(priv, RF_A, RF6052_REG_WE_LUT);
 val32 |= 0x80000;
 rtl8xxxu_write_rfreg(priv, RF_A, RF6052_REG_WE_LUT, val32);
 rtl8xxxu_write_rfreg(priv, RF_A, RF6052_REG_RCK_OS, 0x20000);
 rtl8xxxu_write_rfreg(priv, RF_A, RF6052_REG_TXPA_G1, 0x0003f);
 rtl8xxxu_write_rfreg(priv, RF_A, RF6052_REG_TXPA_G2, 0xc7f87);




 rtl8xxxu_write32(priv, REG_TX_IQK, 0x01007c00);
 rtl8xxxu_write32(priv, REG_RX_IQK, 0x01004800);


 rtl8xxxu_write32(priv, REG_TX_IQK_TONE_A, 0x18008c1c);
 rtl8xxxu_write32(priv, REG_RX_IQK_TONE_A, 0x38008c1c);
 rtl8xxxu_write32(priv, REG_TX_IQK_TONE_B, 0x38008c1c);
 rtl8xxxu_write32(priv, REG_RX_IQK_TONE_B, 0x38008c1c);

 rtl8xxxu_write32(priv, REG_TX_IQK_PI_A, 0x821403ea);
 rtl8xxxu_write32(priv, REG_RX_IQK_PI_A, 0x28110000);
 rtl8xxxu_write32(priv, REG_TX_IQK_PI_B, 0x82110000);
 rtl8xxxu_write32(priv, REG_RX_IQK_PI_B, 0x28110000);


 rtl8xxxu_write32(priv, REG_IQK_AGC_RSP, 0x00462911);




 val32 = rtl8xxxu_read32(priv, REG_FPGA0_IQK);
 val32 &= 0x000000ff;
 val32 |= 0x80800000;
 rtl8xxxu_write32(priv, REG_FPGA0_IQK, val32);





 if (priv->rf_paths > 1)
  rtl8xxxu_write32(priv, REG_S0S1_PATH_SWITCH, 0x00000000);
 else
  rtl8xxxu_write32(priv, REG_S0S1_PATH_SWITCH, 0x00000280);





 rtl8xxxu_write32(priv, REG_BT_CONTROL_8723BU, 0x00000800);


 rtl8xxxu_write32(priv, REG_IQK_AGC_PTS, 0xf9000000);
 rtl8xxxu_write32(priv, REG_IQK_AGC_PTS, 0xf8000000);

 mdelay(1);


 rtl8xxxu_write32(priv, REG_S0S1_PATH_SWITCH, path_sel);
 val32 = rtl8xxxu_read32(priv, REG_FPGA0_IQK);
 val32 &= 0x000000ff;
 rtl8xxxu_write32(priv, REG_FPGA0_IQK, val32);


 reg_eac = rtl8xxxu_read32(priv, REG_RX_POWER_AFTER_IQK_A_2);
 reg_e94 = rtl8xxxu_read32(priv, REG_TX_POWER_BEFORE_IQK_A);
 reg_e9c = rtl8xxxu_read32(priv, REG_TX_POWER_AFTER_IQK_A);

 val32 = (reg_e9c >> 16) & 0x3ff;
 if (val32 & 0x200)
  val32 = 0x400 - val32;

 if (!(reg_eac & BIT(28)) &&
     ((reg_e94 & 0x03ff0000) != 0x01420000) &&
     ((reg_e9c & 0x03ff0000) != 0x00420000) &&
     ((reg_e94 & 0x03ff0000) < 0x01100000) &&
     ((reg_e94 & 0x03ff0000) > 0x00f00000) &&
     val32 < 0xf)
  result |= 0x01;
 else
  goto out;

out:
 return result;
}
