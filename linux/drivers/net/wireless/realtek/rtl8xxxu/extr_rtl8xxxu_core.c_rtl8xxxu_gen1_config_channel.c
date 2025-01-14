
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl8xxxu_priv {int rf_paths; } ;
struct TYPE_5__ {int width; TYPE_1__* chan; int center_freq1; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; struct rtl8xxxu_priv* priv; } ;
struct TYPE_4__ {int hw_value; int center_freq; } ;


 int BW_OPMODE_20MHZ ;
 int CCK0_SIDEBAND ;
 int FPGA0_ANALOG2_20MHZ ;
 int FPGA0_PS_LOWER_CHANNEL ;
 int FPGA0_PS_UPPER_CHANNEL ;
 int FPGA_RF_MODE ;
 int MODE_AG_CHANNEL_20MHZ ;
 int MODE_AG_CHANNEL_MASK ;



 int OFDM_LSTF_PRIME_CH_HIGH ;
 int OFDM_LSTF_PRIME_CH_LOW ;
 int OFDM_LSTF_PRIME_CH_MASK ;
 scalar_t__ REG_BW_OPMODE ;
 int REG_CCK0_SYSTEM ;
 int REG_FPGA0_ANALOG2 ;
 int REG_FPGA0_POWER_SAVE ;
 int REG_FPGA0_RF_MODE ;
 int REG_FPGA1_RF_MODE ;
 int REG_OFDM1_LSTF ;
 int REG_R2T_SIFS ;
 int REG_RESPONSE_RATE_SET ;
 scalar_t__ REG_SIFS_CCK ;
 scalar_t__ REG_SIFS_OFDM ;
 int REG_T2T_SIFS ;
 int RF6052_REG_MODE_AG ;
 int RF_A ;
 int RSR_RSC_BANDWIDTH_40M ;
 int RSR_RSC_LOWER_SUB_CHANNEL ;
 int RSR_RSC_UPPER_SUB_CHANNEL ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,scalar_t__) ;
 int rtl8xxxu_read_rfreg (struct rtl8xxxu_priv*,int,int ) ;
 int rtl8xxxu_write16 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,scalar_t__,int) ;
 int rtl8xxxu_write_rfreg (struct rtl8xxxu_priv*,int,int ,int) ;

void rtl8xxxu_gen1_config_channel(struct ieee80211_hw *hw)
{
 struct rtl8xxxu_priv *priv = hw->priv;
 u32 val32, rsr;
 u8 val8, opmode;
 bool ht = 1;
 int sec_ch_above, channel;
 int i;

 opmode = rtl8xxxu_read8(priv, REG_BW_OPMODE);
 rsr = rtl8xxxu_read32(priv, REG_RESPONSE_RATE_SET);
 channel = hw->conf.chandef.chan->hw_value;

 switch (hw->conf.chandef.width) {
 case 129:
  ht = 0;

 case 130:
  opmode |= BW_OPMODE_20MHZ;
  rtl8xxxu_write8(priv, REG_BW_OPMODE, opmode);

  val32 = rtl8xxxu_read32(priv, REG_FPGA0_RF_MODE);
  val32 &= ~FPGA_RF_MODE;
  rtl8xxxu_write32(priv, REG_FPGA0_RF_MODE, val32);

  val32 = rtl8xxxu_read32(priv, REG_FPGA1_RF_MODE);
  val32 &= ~FPGA_RF_MODE;
  rtl8xxxu_write32(priv, REG_FPGA1_RF_MODE, val32);

  val32 = rtl8xxxu_read32(priv, REG_FPGA0_ANALOG2);
  val32 |= FPGA0_ANALOG2_20MHZ;
  rtl8xxxu_write32(priv, REG_FPGA0_ANALOG2, val32);
  break;
 case 128:
  if (hw->conf.chandef.center_freq1 >
      hw->conf.chandef.chan->center_freq) {
   sec_ch_above = 1;
   channel += 2;
  } else {
   sec_ch_above = 0;
   channel -= 2;
  }

  opmode &= ~BW_OPMODE_20MHZ;
  rtl8xxxu_write8(priv, REG_BW_OPMODE, opmode);
  rsr &= ~RSR_RSC_BANDWIDTH_40M;
  if (sec_ch_above)
   rsr |= RSR_RSC_UPPER_SUB_CHANNEL;
  else
   rsr |= RSR_RSC_LOWER_SUB_CHANNEL;
  rtl8xxxu_write32(priv, REG_RESPONSE_RATE_SET, rsr);

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

  val32 = rtl8xxxu_read32(priv, REG_FPGA0_ANALOG2);
  val32 &= ~FPGA0_ANALOG2_20MHZ;
  rtl8xxxu_write32(priv, REG_FPGA0_ANALOG2, val32);

  val32 = rtl8xxxu_read32(priv, REG_FPGA0_POWER_SAVE);
  val32 &= ~(FPGA0_PS_LOWER_CHANNEL | FPGA0_PS_UPPER_CHANNEL);
  if (sec_ch_above)
   val32 |= FPGA0_PS_UPPER_CHANNEL;
  else
   val32 |= FPGA0_PS_LOWER_CHANNEL;
  rtl8xxxu_write32(priv, REG_FPGA0_POWER_SAVE, val32);
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
  if (hw->conf.chandef.width == 128)
   val32 &= ~MODE_AG_CHANNEL_20MHZ;
  else
   val32 |= MODE_AG_CHANNEL_20MHZ;
  rtl8xxxu_write_rfreg(priv, i, RF6052_REG_MODE_AG, val32);
 }
}
