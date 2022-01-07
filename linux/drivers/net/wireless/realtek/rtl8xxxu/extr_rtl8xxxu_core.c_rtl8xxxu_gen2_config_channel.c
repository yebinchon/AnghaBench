
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl8xxxu_priv {int rf_paths; } ;
struct TYPE_5__ {int width; TYPE_1__* chan; int center_freq1; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; struct rtl8xxxu_priv* priv; } ;
struct TYPE_4__ {int hw_value; int center_freq; } ;


 int BIT (int) ;
 int CCK0_SIDEBAND ;
 int FPGA0_PS_LOWER_CHANNEL ;
 int FPGA0_PS_UPPER_CHANNEL ;
 int FPGA_RF_MODE ;
 int MODE_AG_BW_20MHZ_8723B ;
 int MODE_AG_BW_40MHZ_8723B ;
 int MODE_AG_BW_80MHZ_8723B ;
 int MODE_AG_BW_MASK ;
 int MODE_AG_CHANNEL_MASK ;




 int OFDM_LSTF_PRIME_CH_HIGH ;
 int OFDM_LSTF_PRIME_CH_LOW ;
 int OFDM_LSTF_PRIME_CH_MASK ;
 int REG_CCK0_SYSTEM ;
 scalar_t__ REG_DATA_SUBCHANNEL ;
 int REG_FPGA0_POWER_SAVE ;
 int REG_FPGA0_RF_MODE ;
 int REG_FPGA1_RF_MODE ;
 int REG_OFDM0_TX_PSDO_NOISE_WEIGHT ;
 int REG_OFDM1_LSTF ;
 int REG_R2T_SIFS ;
 int REG_RESPONSE_RATE_SET ;
 scalar_t__ REG_SIFS_CCK ;
 scalar_t__ REG_SIFS_OFDM ;
 int REG_T2T_SIFS ;
 int REG_WMAC_TRXPTCL_CTL ;
 int RF6052_REG_MODE_AG ;
 int RF_A ;
 int WMAC_TRXPTCL_CTL_BW_20 ;
 int WMAC_TRXPTCL_CTL_BW_40 ;
 int WMAC_TRXPTCL_CTL_BW_80 ;
 int WMAC_TRXPTCL_CTL_BW_MASK ;
 int rtl8xxxu_read16 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_read_rfreg (struct rtl8xxxu_priv*,int,int ) ;
 int rtl8xxxu_write16 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,scalar_t__,int) ;
 int rtl8xxxu_write_rfreg (struct rtl8xxxu_priv*,int,int ,int) ;

void rtl8xxxu_gen2_config_channel(struct ieee80211_hw *hw)
{
 struct rtl8xxxu_priv *priv = hw->priv;
 u32 val32, rsr;
 u8 val8, subchannel;
 u16 rf_mode_bw;
 bool ht = 1;
 int sec_ch_above, channel;
 int i;

 rf_mode_bw = rtl8xxxu_read16(priv, REG_WMAC_TRXPTCL_CTL);
 rf_mode_bw &= ~WMAC_TRXPTCL_CTL_BW_MASK;
 rsr = rtl8xxxu_read32(priv, REG_RESPONSE_RATE_SET);
 channel = hw->conf.chandef.chan->hw_value;


 subchannel = 0;

 switch (hw->conf.chandef.width) {
 case 130:
  ht = 0;

 case 131:
  rf_mode_bw |= WMAC_TRXPTCL_CTL_BW_20;
  subchannel = 0;

  val32 = rtl8xxxu_read32(priv, REG_FPGA0_RF_MODE);
  val32 &= ~FPGA_RF_MODE;
  rtl8xxxu_write32(priv, REG_FPGA0_RF_MODE, val32);

  val32 = rtl8xxxu_read32(priv, REG_FPGA1_RF_MODE);
  val32 &= ~FPGA_RF_MODE;
  rtl8xxxu_write32(priv, REG_FPGA1_RF_MODE, val32);

  val32 = rtl8xxxu_read32(priv, REG_OFDM0_TX_PSDO_NOISE_WEIGHT);
  val32 &= ~(BIT(30) | BIT(31));
  rtl8xxxu_write32(priv, REG_OFDM0_TX_PSDO_NOISE_WEIGHT, val32);

  break;
 case 129:
  rf_mode_bw |= WMAC_TRXPTCL_CTL_BW_40;

  if (hw->conf.chandef.center_freq1 >
      hw->conf.chandef.chan->center_freq) {
   sec_ch_above = 1;
   channel += 2;
  } else {
   sec_ch_above = 0;
   channel -= 2;
  }

  val32 = rtl8xxxu_read32(priv, REG_FPGA0_RF_MODE);
  val32 |= FPGA_RF_MODE;
  rtl8xxxu_write32(priv, REG_FPGA0_RF_MODE, val32);

  val32 = rtl8xxxu_read32(priv, REG_FPGA1_RF_MODE);
  val32 |= FPGA_RF_MODE;
  rtl8xxxu_write32(priv, REG_FPGA1_RF_MODE, val32);





  val32 = rtl8xxxu_read32(priv, REG_CCK0_SYSTEM);
  val32 &= ~CCK0_SIDEBAND;
  if (!sec_ch_above)
   val32 |= CCK0_SIDEBAND;
  rtl8xxxu_write32(priv, REG_CCK0_SYSTEM, val32);

  val32 = rtl8xxxu_read32(priv, REG_OFDM1_LSTF);
  val32 &= ~OFDM_LSTF_PRIME_CH_MASK;
  if (sec_ch_above)
   val32 |= OFDM_LSTF_PRIME_CH_LOW;
  else
   val32 |= OFDM_LSTF_PRIME_CH_HIGH;
  rtl8xxxu_write32(priv, REG_OFDM1_LSTF, val32);

  val32 = rtl8xxxu_read32(priv, REG_FPGA0_POWER_SAVE);
  val32 &= ~(FPGA0_PS_LOWER_CHANNEL | FPGA0_PS_UPPER_CHANNEL);
  if (sec_ch_above)
   val32 |= FPGA0_PS_UPPER_CHANNEL;
  else
   val32 |= FPGA0_PS_LOWER_CHANNEL;
  rtl8xxxu_write32(priv, REG_FPGA0_POWER_SAVE, val32);
  break;
 case 128:
  rf_mode_bw |= WMAC_TRXPTCL_CTL_BW_80;
  break;
 default:
  break;
 }

 for (i = RF_A; i < priv->rf_paths; i++) {
  val32 = rtl8xxxu_read_rfreg(priv, i, RF6052_REG_MODE_AG);
  val32 &= ~MODE_AG_CHANNEL_MASK;
  val32 |= channel;
  rtl8xxxu_write_rfreg(priv, i, RF6052_REG_MODE_AG, val32);
 }

 rtl8xxxu_write16(priv, REG_WMAC_TRXPTCL_CTL, rf_mode_bw);
 rtl8xxxu_write8(priv, REG_DATA_SUBCHANNEL, subchannel);

 if (ht)
  val8 = 0x0e;
 else
  val8 = 0x0a;

 rtl8xxxu_write8(priv, REG_SIFS_CCK + 1, val8);
 rtl8xxxu_write8(priv, REG_SIFS_OFDM + 1, val8);

 rtl8xxxu_write16(priv, REG_R2T_SIFS, 0x0808);
 rtl8xxxu_write16(priv, REG_T2T_SIFS, 0x0a0a);

 for (i = RF_A; i < priv->rf_paths; i++) {
  val32 = rtl8xxxu_read_rfreg(priv, i, RF6052_REG_MODE_AG);
  val32 &= ~MODE_AG_BW_MASK;
  switch(hw->conf.chandef.width) {
  case 128:
   val32 |= MODE_AG_BW_80MHZ_8723B;
   break;
  case 129:
   val32 |= MODE_AG_BW_40MHZ_8723B;
   break;
  default:
   val32 |= MODE_AG_BW_20MHZ_8723B;
   break;
  }
  rtl8xxxu_write_rfreg(priv, i, RF6052_REG_MODE_AG, val32);
 }
}
