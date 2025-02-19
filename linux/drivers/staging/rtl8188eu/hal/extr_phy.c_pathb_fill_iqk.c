
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
typedef int s32 ;


 int BIT (int) ;
 int bMaskDWord ;
 int phy_query_bb_reg (struct adapter*,int ,int ) ;
 int phy_set_bb_reg (struct adapter*,int ,int,int) ;
 int rOFDM0_AGCRSSITable ;
 int rOFDM0_ECCAThreshold ;
 int rOFDM0_XBRxIQImbalance ;
 int rOFDM0_XBTxIQImbalance ;
 int rOFDM0_XDTxAFE ;

__attribute__((used)) static void pathb_fill_iqk(struct adapter *adapt, bool iqkok, s32 result[][8],
      u8 final_candidate, bool txonly)
{
 u32 oldval_1, x, tx1_a, reg;
 s32 y, tx1_c;

 if (final_candidate == 0xFF) {
  return;
 } else if (iqkok) {
  oldval_1 = (phy_query_bb_reg(adapt, rOFDM0_XBTxIQImbalance, bMaskDWord) >> 22) & 0x3FF;

  x = result[final_candidate][4];
  if ((x & 0x00000200) != 0)
   x = x | 0xFFFFFC00;
  tx1_a = (x * oldval_1) >> 8;
  phy_set_bb_reg(adapt, rOFDM0_XBTxIQImbalance, 0x3FF, tx1_a);

  phy_set_bb_reg(adapt, rOFDM0_ECCAThreshold, BIT(27),
          ((x * oldval_1>>7) & 0x1));

  y = result[final_candidate][5];
  if ((y & 0x00000200) != 0)
   y = y | 0xFFFFFC00;

  tx1_c = (y * oldval_1) >> 8;

  phy_set_bb_reg(adapt, rOFDM0_XDTxAFE, 0xF0000000,
          ((tx1_c&0x3C0)>>6));
  phy_set_bb_reg(adapt, rOFDM0_XBTxIQImbalance, 0x003F0000,
          (tx1_c&0x3F));
  phy_set_bb_reg(adapt, rOFDM0_ECCAThreshold, BIT(25),
          ((y * oldval_1>>7) & 0x1));

  if (txonly)
   return;

  reg = result[final_candidate][6];
  phy_set_bb_reg(adapt, rOFDM0_XBRxIQImbalance, 0x3FF, reg);

  reg = result[final_candidate][7] & 0x3F;
  phy_set_bb_reg(adapt, rOFDM0_XBRxIQImbalance, 0xFC00, reg);

  reg = (result[final_candidate][7] >> 6) & 0xF;
  phy_set_bb_reg(adapt, rOFDM0_AGCRSSITable, 0x0000F000, reg);
 }
}
