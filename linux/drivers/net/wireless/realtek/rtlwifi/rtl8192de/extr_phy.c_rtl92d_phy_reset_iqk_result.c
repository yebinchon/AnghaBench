
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct rtl_phy {TYPE_1__* iqk_matrix; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct iqk_matrix_regs {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int** value; int iqk_done; } ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int IQK_MATRIX_REG_NUM ;
 size_t IQK_MATRIX_SETTINGS_NUM ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92d_phy_reset_iqk_result(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u8 i;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "settings regs %d default regs %d\n",
   (int)(sizeof(rtlphy->iqk_matrix) /
         sizeof(struct iqk_matrix_regs)),
   IQK_MATRIX_REG_NUM);

 for (i = 0; i < IQK_MATRIX_SETTINGS_NUM; i++) {
  rtlphy->iqk_matrix[i].value[0][0] = 0x100;
  rtlphy->iqk_matrix[i].value[0][2] = 0x100;
  rtlphy->iqk_matrix[i].value[0][4] = 0x100;
  rtlphy->iqk_matrix[i].value[0][6] = 0x100;
  rtlphy->iqk_matrix[i].value[0][1] = 0x0;
  rtlphy->iqk_matrix[i].value[0][3] = 0x0;
  rtlphy->iqk_matrix[i].value[0][5] = 0x0;
  rtlphy->iqk_matrix[i].value[0][7] = 0x0;
  rtlphy->iqk_matrix[i].iqk_done = 0;
 }
}
