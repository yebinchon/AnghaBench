
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int rf_type; } ;
struct rtl_priv {TYPE_1__ phy; } ;
struct rtl_pci {int reg_bcn_ctrl_val; } ;
struct rtl_hal {scalar_t__ macphymode; int minspace_cfg; } ;
struct ieee80211_hw {int dummy; } ;


 int BW_OPMODE_20MHZ ;
 scalar_t__ DUALMAC_DUALPHY ;
 scalar_t__ DUALMAC_SINGLEPHY ;
 int MAX_MSS_DENSITY_1T ;
 int MAX_MSS_DENSITY_2T ;
 int RATE_ALL_CCK ;
 int RATE_ALL_OFDM_AG ;
 scalar_t__ REG_ACKTO ;
 scalar_t__ REG_AGGLEN_LMT ;
 scalar_t__ REG_AGGR_BREAK_TIME ;
 scalar_t__ REG_AMPDU_MIN_SPACE ;
 scalar_t__ REG_ATIMWND ;
 scalar_t__ REG_BAR_MODE_CTRL ;
 scalar_t__ REG_BCN_CTRL ;
 scalar_t__ REG_BCN_MAX_ERR ;
 scalar_t__ REG_BWOPMODE ;
 scalar_t__ REG_DARFRC ;
 int REG_FAST_EDCA_CTRL ;
 int REG_FWHW_TXQ_CTRL ;
 scalar_t__ REG_HWSEQ_CTRL ;
 scalar_t__ REG_INIRTS_RATE_SEL ;
 int REG_MAC_SPEC_SIFS ;
 scalar_t__ REG_MAR ;
 int REG_NAV_PROT_LEN ;
 scalar_t__ REG_PIFS ;
 scalar_t__ REG_RARFRC ;
 int REG_RL ;
 scalar_t__ REG_RRSR ;
 int REG_SIFS_CTX ;
 int REG_SIFS_TRX ;
 scalar_t__ REG_SLOT ;
 int REG_SPEC_SIFS ;
 scalar_t__ REG_TBTT_PROHIBIT ;




 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl92de_hw_configure(struct ieee80211_hw *hw)
{
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u8 reg_bw_opmode = BW_OPMODE_20MHZ;
 u32 reg_rrsr;

 reg_rrsr = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
 rtl_write_byte(rtlpriv, REG_INIRTS_RATE_SEL, 0x8);
 rtl_write_byte(rtlpriv, REG_BWOPMODE, reg_bw_opmode);
 rtl_write_dword(rtlpriv, REG_RRSR, reg_rrsr);
 rtl_write_byte(rtlpriv, REG_SLOT, 0x09);
 rtl_write_byte(rtlpriv, REG_AMPDU_MIN_SPACE, 0x0);
 rtl_write_word(rtlpriv, REG_FWHW_TXQ_CTRL, 0x1F80);
 rtl_write_word(rtlpriv, REG_RL, 0x0707);
 rtl_write_dword(rtlpriv, REG_BAR_MODE_CTRL, 0x02012802);
 rtl_write_byte(rtlpriv, REG_HWSEQ_CTRL, 0xFF);
 rtl_write_dword(rtlpriv, REG_DARFRC, 0x01000000);
 rtl_write_dword(rtlpriv, REG_DARFRC + 4, 0x07060504);
 rtl_write_dword(rtlpriv, REG_RARFRC, 0x01000000);
 rtl_write_dword(rtlpriv, REG_RARFRC + 4, 0x07060504);

 if (rtlhal->macphymode == DUALMAC_DUALPHY)
  rtl_write_dword(rtlpriv, REG_AGGLEN_LMT, 0xb9726641);
 else if (rtlhal->macphymode == DUALMAC_SINGLEPHY)
  rtl_write_dword(rtlpriv, REG_AGGLEN_LMT, 0x66626641);
 else
  rtl_write_dword(rtlpriv, REG_AGGLEN_LMT, 0xb972a841);
 rtl_write_byte(rtlpriv, REG_ATIMWND, 0x2);
 rtl_write_byte(rtlpriv, REG_BCN_MAX_ERR, 0x0a);
 rtlpci->reg_bcn_ctrl_val = 0x1f;
 rtl_write_byte(rtlpriv, REG_BCN_CTRL, rtlpci->reg_bcn_ctrl_val);
 rtl_write_byte(rtlpriv, REG_TBTT_PROHIBIT + 1, 0xff);
 rtl_write_byte(rtlpriv, REG_PIFS, 0x1C);
 rtl_write_byte(rtlpriv, REG_AGGR_BREAK_TIME, 0x16);
 rtl_write_word(rtlpriv, REG_NAV_PROT_LEN, 0x0020);

 rtl_write_word(rtlpriv, REG_FAST_EDCA_CTRL, 0x6666);

 rtl_write_byte(rtlpriv, REG_ACKTO, 0x40);

 rtl_write_word(rtlpriv, REG_SPEC_SIFS, 0x1010);
 rtl_write_word(rtlpriv, REG_MAC_SPEC_SIFS, 0x1010);

 rtl_write_word(rtlpriv, REG_SIFS_CTX, 0x1010);

 rtl_write_word(rtlpriv, REG_SIFS_TRX, 0x1010);

 rtl_write_dword(rtlpriv, REG_MAR, 0xffffffff);
 rtl_write_dword(rtlpriv, REG_MAR + 4, 0xffffffff);
 switch (rtlpriv->phy.rf_type) {
 case 130:
 case 131:
  rtlhal->minspace_cfg = (MAX_MSS_DENSITY_1T << 3);
  break;
 case 129:
 case 128:
  rtlhal->minspace_cfg = (MAX_MSS_DENSITY_2T << 3);
  break;
 }
}
