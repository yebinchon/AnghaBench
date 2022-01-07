
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int RTW_RATE_SECTION_HT_1S ;
 int RTW_RATE_SECTION_HT_2S ;
 int RTW_RATE_SECTION_VHT_1S ;
 int RTW_RATE_SECTION_VHT_2S ;
 int rtw_xref_5g_txpwr_lmt (struct rtw_dev*,int,int,int,int,int) ;

__attribute__((used)) static void
rtw_xref_txpwr_lmt_by_rs(struct rtw_dev *rtwdev, u8 regd, u8 bw, u8 ch_idx)
{
 u8 rs_idx, rs_ht, rs_vht;
 u8 rs_cmp[2][2] = {{RTW_RATE_SECTION_HT_1S, RTW_RATE_SECTION_VHT_1S},
      {RTW_RATE_SECTION_HT_2S, RTW_RATE_SECTION_VHT_2S} };

 for (rs_idx = 0; rs_idx < 2; rs_idx++) {
  rs_ht = rs_cmp[rs_idx][0];
  rs_vht = rs_cmp[rs_idx][1];

  rtw_xref_5g_txpwr_lmt(rtwdev, regd, bw, ch_idx, rs_ht, rs_vht);
 }
}
