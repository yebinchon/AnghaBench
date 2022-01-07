
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct rtl_hal {int version; } ;
struct rtl_priv {struct rtl_hal rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 int IS_92D_SINGLEPHY (int ) ;
 size_t MAX_TOLERANCE_92D ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool _rtl92d_phy_simularity_compare(struct ieee80211_hw *hw,
 long result[][8], u8 c1, u8 c2)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = &(rtlpriv->rtlhal);
 u32 i, j, diff, sim_bitmap, bound;
 u8 final_candidate[2] = {0xFF, 0xFF};
 bool bresult = 1;
 bool is2t = IS_92D_SINGLEPHY(rtlhal->version);

 if (is2t)
  bound = 8;
 else
  bound = 4;
 sim_bitmap = 0;
 for (i = 0; i < bound; i++) {
  diff = (result[c1][i] > result[c2][i]) ? (result[c1][i] -
         result[c2][i]) : (result[c2][i] - result[c1][i]);
  if (diff > MAX_TOLERANCE_92D) {
   if ((i == 2 || i == 6) && !sim_bitmap) {
    if (result[c1][i] + result[c1][i + 1] == 0)
     final_candidate[(i / 4)] = c2;
    else if (result[c2][i] + result[c2][i + 1] == 0)
     final_candidate[(i / 4)] = c1;
    else
     sim_bitmap = sim_bitmap | (1 << i);
   } else {
    sim_bitmap = sim_bitmap | (1 << i);
   }
  }
 }
 if (sim_bitmap == 0) {
  for (i = 0; i < (bound / 4); i++) {
   if (final_candidate[i] != 0xFF) {
    for (j = i * 4; j < (i + 1) * 4 - 2; j++)
     result[3][j] =
       result[final_candidate[i]][j];
    bresult = 0;
   }
  }
  return bresult;
 }
 if (!(sim_bitmap & 0x0F)) {
  for (i = 0; i < 4; i++)
   result[3][i] = result[c1][i];
 } else if (!(sim_bitmap & 0x03)) {
  for (i = 0; i < 2; i++)
   result[3][i] = result[c1][i];
 }
 if (!(sim_bitmap & 0xF0) && is2t) {
  for (i = 4; i < 8; i++)
   result[3][i] = result[c1][i];
 } else if (!(sim_bitmap & 0x30)) {
  for (i = 4; i < 6; i++)
   result[3][i] = result[c1][i];
 }
 return 0;
}
