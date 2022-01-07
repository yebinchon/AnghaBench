
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;


 int BIT (int) ;
 int COMP_ERR ;
 int DBG_WARNING ;



 int REG_TRXPTCL_CTL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int rtl_read_word (struct rtl_priv*,int ) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl8821ae_phy_set_reg_bw(struct rtl_priv *rtlpriv, u8 bw)
{
 u16 reg_rf_mode_bw, tmp = 0;

 reg_rf_mode_bw = rtl_read_word(rtlpriv, REG_TRXPTCL_CTL);
 switch (bw) {
 case 130:
  rtl_write_word(rtlpriv, REG_TRXPTCL_CTL, reg_rf_mode_bw & 0xFE7F);
  break;
 case 129:
  tmp = reg_rf_mode_bw | BIT(7);
  rtl_write_word(rtlpriv, REG_TRXPTCL_CTL, tmp & 0xFEFF);
  break;
 case 128:
  tmp = reg_rf_mode_bw | BIT(8);
  rtl_write_word(rtlpriv, REG_TRXPTCL_CTL, tmp & 0xFF7F);
  break;
 default:
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING, "unknown Bandwidth: 0x%x\n", bw);
  break;
 }
}
