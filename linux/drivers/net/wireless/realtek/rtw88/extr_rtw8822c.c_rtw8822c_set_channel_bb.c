
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int BIT (int) ;
 int BITS_RXAGC_CCK ;
 int BITS_RXAGC_OFDM ;
 int BITS_RX_IQ_WEIGHT ;
 int BITS_SUBTUNE ;
 int BIT_BB_CCK_CHECK_EN ;
 int BIT_CHECK_CCK_EN ;
 int BIT_NBI_EN ;
 int BIT_PT_OPT ;
 int MASKDWORD ;
 int MASKHWORD ;
 int MASKLWORD ;
 int REG_BGCTRL ;
 int REG_CCAMSK ;
 int REG_CCKSB ;
 int REG_CCKTXONLY ;
 int REG_CCK_CHECK ;
 int REG_CCK_SOURCE ;
 int REG_DFIRBW ;
 int REG_PT_CHSMO ;
 int REG_RXAGCCTL ;
 int REG_RXAGCCTL0 ;
 int REG_RXCCKSEL ;
 int REG_SBD ;
 int REG_SCOTRK ;
 int REG_TXBWCTL ;
 int REG_TXCLK ;
 int REG_TXDFIR0 ;
 int REG_TXF0 ;
 int REG_TXF1 ;
 int REG_TXF2 ;
 int REG_TXF3 ;
 int REG_TXF4 ;
 int REG_TXF5 ;
 int REG_TXF6 ;
 int REG_TXF7 ;





 int rtw_write32_clr (struct rtw_dev*,int ,int) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,int) ;
 int rtw_write32_set (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw8822c_set_channel_bb(struct rtw_dev *rtwdev, u8 channel, u8 bw,
        u8 primary_ch_idx)
{
 if (channel <= 14) {
  rtw_write32_clr(rtwdev, REG_BGCTRL, BITS_RX_IQ_WEIGHT);
  rtw_write32_mask(rtwdev, REG_RXCCKSEL, 0xf0000000, 0x8);
  rtw_write32_set(rtwdev, REG_TXF4, BIT(20));
  rtw_write32_clr(rtwdev, REG_CCK_CHECK, BIT_CHECK_CCK_EN);
  rtw_write32_clr(rtwdev, REG_CCKTXONLY, BIT_BB_CCK_CHECK_EN);
  rtw_write32_mask(rtwdev, REG_CCAMSK, 0x3F000000, 0xF);

  switch (bw) {
  case 131:
   rtw_write32_mask(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_CCK,
      0x5);
   rtw_write32_mask(rtwdev, REG_RXAGCCTL, BITS_RXAGC_CCK,
      0x5);
   rtw_write32_mask(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
      0x6);
   rtw_write32_mask(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
      0x6);
   break;
  case 130:
   rtw_write32_mask(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_CCK,
      0x4);
   rtw_write32_mask(rtwdev, REG_RXAGCCTL, BITS_RXAGC_CCK,
      0x4);
   rtw_write32_mask(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
      0x0);
   rtw_write32_mask(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
      0x0);
   break;
  }
  if (channel == 13 || channel == 14)
   rtw_write32_mask(rtwdev, REG_SCOTRK, 0xfff, 0x969);
  else if (channel == 11 || channel == 12)
   rtw_write32_mask(rtwdev, REG_SCOTRK, 0xfff, 0x96a);
  else
   rtw_write32_mask(rtwdev, REG_SCOTRK, 0xfff, 0x9aa);
  if (channel == 14) {
   rtw_write32_mask(rtwdev, REG_TXF0, MASKHWORD, 0x3da0);
   rtw_write32_mask(rtwdev, REG_TXF1, MASKDWORD,
      0x4962c931);
   rtw_write32_mask(rtwdev, REG_TXF2, MASKLWORD, 0x6aa3);
   rtw_write32_mask(rtwdev, REG_TXF3, MASKHWORD, 0xaa7b);
   rtw_write32_mask(rtwdev, REG_TXF4, MASKLWORD, 0xf3d7);
   rtw_write32_mask(rtwdev, REG_TXF5, MASKDWORD, 0x0);
   rtw_write32_mask(rtwdev, REG_TXF6, MASKDWORD,
      0xff012455);
   rtw_write32_mask(rtwdev, REG_TXF7, MASKDWORD, 0xffff);
  } else {
   rtw_write32_mask(rtwdev, REG_TXF0, MASKHWORD, 0x5284);
   rtw_write32_mask(rtwdev, REG_TXF1, MASKDWORD,
      0x3e18fec8);
   rtw_write32_mask(rtwdev, REG_TXF2, MASKLWORD, 0x0a88);
   rtw_write32_mask(rtwdev, REG_TXF3, MASKHWORD, 0xacc4);
   rtw_write32_mask(rtwdev, REG_TXF4, MASKLWORD, 0xc8b2);
   rtw_write32_mask(rtwdev, REG_TXF5, MASKDWORD,
      0x00faf0de);
   rtw_write32_mask(rtwdev, REG_TXF6, MASKDWORD,
      0x00122344);
   rtw_write32_mask(rtwdev, REG_TXF7, MASKDWORD,
      0x0fffffff);
  }
  if (channel == 13)
   rtw_write32_mask(rtwdev, REG_TXDFIR0, 0x70, 0x3);
  else
   rtw_write32_mask(rtwdev, REG_TXDFIR0, 0x70, 0x1);
 } else if (channel > 35) {
  rtw_write32_set(rtwdev, REG_CCKTXONLY, BIT_BB_CCK_CHECK_EN);
  rtw_write32_set(rtwdev, REG_CCK_CHECK, BIT_CHECK_CCK_EN);
  rtw_write32_set(rtwdev, REG_BGCTRL, BITS_RX_IQ_WEIGHT);
  rtw_write32_clr(rtwdev, REG_TXF4, BIT(20));
  rtw_write32_mask(rtwdev, REG_RXCCKSEL, 0xf0000000, 0x0);
  rtw_write32_mask(rtwdev, REG_CCAMSK, 0x3F000000, 0x22);
  rtw_write32_mask(rtwdev, REG_TXDFIR0, 0x70, 0x3);
  if (channel >= 36 && channel <= 64) {
   rtw_write32_mask(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
      0x1);
   rtw_write32_mask(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
      0x1);
  } else if (channel >= 100 && channel <= 144) {
   rtw_write32_mask(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
      0x2);
   rtw_write32_mask(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
      0x2);
  } else if (channel >= 149) {
   rtw_write32_mask(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
      0x3);
   rtw_write32_mask(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
      0x3);
  }

  if (channel >= 36 && channel <= 51)
   rtw_write32_mask(rtwdev, REG_SCOTRK, 0xfff, 0x494);
  else if (channel >= 52 && channel <= 55)
   rtw_write32_mask(rtwdev, REG_SCOTRK, 0xfff, 0x493);
  else if (channel >= 56 && channel <= 111)
   rtw_write32_mask(rtwdev, REG_SCOTRK, 0xfff, 0x453);
  else if (channel >= 112 && channel <= 119)
   rtw_write32_mask(rtwdev, REG_SCOTRK, 0xfff, 0x452);
  else if (channel >= 120 && channel <= 172)
   rtw_write32_mask(rtwdev, REG_SCOTRK, 0xfff, 0x412);
  else if (channel >= 173 && channel <= 177)
   rtw_write32_mask(rtwdev, REG_SCOTRK, 0xfff, 0x411);
 }

 switch (bw) {
 case 131:
  rtw_write32_mask(rtwdev, REG_DFIRBW, 0x3FF0, 0x19B);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xf, 0x0);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xffc0, 0x0);
  rtw_write32_mask(rtwdev, REG_TXCLK, 0x700, 0x7);
  rtw_write32_mask(rtwdev, REG_TXCLK, 0x700000, 0x6);
  rtw_write32_mask(rtwdev, REG_CCK_SOURCE, BIT_NBI_EN, 0x0);
  rtw_write32_mask(rtwdev, REG_SBD, BITS_SUBTUNE, 0x1);
  rtw_write32_mask(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x0);
  break;
 case 130:
  rtw_write32_mask(rtwdev, REG_CCKSB, BIT(4),
     (primary_ch_idx == 1 ? 1 : 0));
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xf, 0x5);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xc0, 0x0);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xff00,
     (primary_ch_idx | (primary_ch_idx << 4)));
  rtw_write32_mask(rtwdev, REG_CCK_SOURCE, BIT_NBI_EN, 0x1);
  rtw_write32_mask(rtwdev, REG_SBD, BITS_SUBTUNE, 0x1);
  rtw_write32_mask(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x1);
  break;
 case 128:
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xf, 0xa);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xc0, 0x0);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xff00,
     (primary_ch_idx | (primary_ch_idx << 4)));
  rtw_write32_mask(rtwdev, REG_SBD, BITS_SUBTUNE, 0x6);
  rtw_write32_mask(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x1);
  break;
 case 129:
  rtw_write32_mask(rtwdev, REG_DFIRBW, 0x3FF0, 0x2AB);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xf, 0x0);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xffc0, 0x1);
  rtw_write32_mask(rtwdev, REG_TXCLK, 0x700, 0x4);
  rtw_write32_mask(rtwdev, REG_TXCLK, 0x700000, 0x4);
  rtw_write32_mask(rtwdev, REG_CCK_SOURCE, BIT_NBI_EN, 0x0);
  rtw_write32_mask(rtwdev, REG_SBD, BITS_SUBTUNE, 0x1);
  rtw_write32_mask(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x0);
  break;
 case 132:
  rtw_write32_mask(rtwdev, REG_DFIRBW, 0x3FF0, 0x2AB);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xf, 0x0);
  rtw_write32_mask(rtwdev, REG_TXBWCTL, 0xffc0, 0x2);
  rtw_write32_mask(rtwdev, REG_TXCLK, 0x700, 0x6);
  rtw_write32_mask(rtwdev, REG_TXCLK, 0x700000, 0x5);
  rtw_write32_mask(rtwdev, REG_CCK_SOURCE, BIT_NBI_EN, 0x0);
  rtw_write32_mask(rtwdev, REG_SBD, BITS_SUBTUNE, 0x1);
  rtw_write32_mask(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x0);
  break;
 }
}
