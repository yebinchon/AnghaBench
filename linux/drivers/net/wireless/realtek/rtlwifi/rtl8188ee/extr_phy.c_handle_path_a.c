
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rtl_efuse {size_t** txpwrlevel_cck; int** txpwr_ht20diff; size_t** txpwrlevel_ht40_1s; int** txpwr_legacyhtdiff; } ;


 size_t RF90_PATH_A ;

__attribute__((used)) static void handle_path_a(struct rtl_efuse *rtlefuse, u8 index,
     u8 *cckpowerlevel, u8 *ofdmpowerlevel,
     u8 *bw20powerlevel, u8 *bw40powerlevel)
{
 cckpowerlevel[RF90_PATH_A] =
     rtlefuse->txpwrlevel_cck[RF90_PATH_A][index];

 if (rtlefuse->txpwr_ht20diff[RF90_PATH_A][index] > 0x0f)
  bw20powerlevel[RF90_PATH_A] =
    rtlefuse->txpwrlevel_ht40_1s[RF90_PATH_A][index] -
    (~(rtlefuse->txpwr_ht20diff[RF90_PATH_A][index]) + 1);
 else
  bw20powerlevel[RF90_PATH_A] =
    rtlefuse->txpwrlevel_ht40_1s[RF90_PATH_A][index] +
    rtlefuse->txpwr_ht20diff[RF90_PATH_A][index];
 if (rtlefuse->txpwr_legacyhtdiff[RF90_PATH_A][index] > 0xf)
  ofdmpowerlevel[RF90_PATH_A] =
    rtlefuse->txpwrlevel_ht40_1s[RF90_PATH_A][index] -
    (~(rtlefuse->txpwr_legacyhtdiff[RF90_PATH_A][index])+1);
 else
  ofdmpowerlevel[RF90_PATH_A] =
  rtlefuse->txpwrlevel_ht40_1s[RF90_PATH_A][index] +
    rtlefuse->txpwr_legacyhtdiff[RF90_PATH_A][index];
 bw40powerlevel[RF90_PATH_A] =
   rtlefuse->txpwrlevel_ht40_1s[RF90_PATH_A][index];
}
