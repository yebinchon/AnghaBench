
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int pa_type_2g; int type_gpa; int pa_type_5g; int type_apa; int lna_type_2g; int type_glna; int lna_type_5g; int type_alna; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int _rtl8812ae_read_pa_type (struct ieee80211_hw*,int*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8812ae_read_amplifier_type(struct ieee80211_hw *hw, u8 *hwinfo,
        bool autoload_fail)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);

 u8 ext_type_pa_2g_a = (hwinfo[0XBD] & BIT(2)) >> 2;
 u8 ext_type_pa_2g_b = (hwinfo[0XBD] & BIT(6)) >> 6;
 u8 ext_type_pa_5g_a = (hwinfo[0XBF] & BIT(2)) >> 2;
 u8 ext_type_pa_5g_b = (hwinfo[0XBF] & BIT(6)) >> 6;

 u8 ext_type_lna_2g_a = (hwinfo[0XBD] & (BIT(1) | BIT(0))) >> 0;

 u8 ext_type_lna_2g_b = (hwinfo[0XBD] & (BIT(5) | BIT(4))) >> 4;

 u8 ext_type_lna_5g_a = (hwinfo[0XBF] & (BIT(1) | BIT(0))) >> 0;

 u8 ext_type_lna_5g_b = (hwinfo[0XBF] & (BIT(5) | BIT(4))) >> 4;

 _rtl8812ae_read_pa_type(hw, hwinfo, autoload_fail);


 if ((rtlhal->pa_type_2g & (BIT(5) | BIT(4))) == (BIT(5) | BIT(4)))
  rtlhal->type_gpa = ext_type_pa_2g_b << 2 | ext_type_pa_2g_a;


 if ((rtlhal->pa_type_5g & (BIT(1) | BIT(0))) == (BIT(1) | BIT(0)))
  rtlhal->type_apa = ext_type_pa_5g_b << 2 | ext_type_pa_5g_a;


 if ((rtlhal->lna_type_2g & (BIT(7) | BIT(3))) == (BIT(7) | BIT(3)))
  rtlhal->type_glna = ext_type_lna_2g_b << 2 | ext_type_lna_2g_a;


 if ((rtlhal->lna_type_5g & (BIT(7) | BIT(3))) == (BIT(7) | BIT(3)))
  rtlhal->type_alna = ext_type_lna_5g_b << 2 | ext_type_lna_5g_a;
}
