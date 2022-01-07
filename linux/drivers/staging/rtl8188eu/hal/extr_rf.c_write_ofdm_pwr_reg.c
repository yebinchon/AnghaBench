
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int RF6052_MAX_TX_PWR ;
 int bMaskDWord ;
 int phy_set_bb_reg (struct adapter*,int ,int ,int) ;
 int rTxAGC_A_Mcs03_Mcs00 ;
 int rTxAGC_A_Mcs07_Mcs04 ;
 int rTxAGC_A_Mcs11_Mcs08 ;
 int rTxAGC_A_Mcs15_Mcs12 ;
 int rTxAGC_A_Rate18_06 ;
 int rTxAGC_A_Rate54_24 ;
 int rTxAGC_B_Mcs03_Mcs00 ;
 int rTxAGC_B_Mcs07_Mcs04 ;
 int rTxAGC_B_Mcs11_Mcs08 ;
 int rTxAGC_B_Mcs15_Mcs12 ;
 int rTxAGC_B_Rate18_06 ;
 int rTxAGC_B_Rate54_24 ;

__attribute__((used)) static void write_ofdm_pwr_reg(struct adapter *adapt, u8 index, u32 *pvalue)
{
 u16 regoffset_a[6] = { rTxAGC_A_Rate18_06, rTxAGC_A_Rate54_24,
          rTxAGC_A_Mcs03_Mcs00, rTxAGC_A_Mcs07_Mcs04,
          rTxAGC_A_Mcs11_Mcs08, rTxAGC_A_Mcs15_Mcs12 };
 u16 regoffset_b[6] = { rTxAGC_B_Rate18_06, rTxAGC_B_Rate54_24,
          rTxAGC_B_Mcs03_Mcs00, rTxAGC_B_Mcs07_Mcs04,
          rTxAGC_B_Mcs11_Mcs08, rTxAGC_B_Mcs15_Mcs12 };
 u8 i, rf, pwr_val[4];
 u32 write_val;
 u16 regoffset;

 for (rf = 0; rf < 2; rf++) {
  write_val = pvalue[rf];
  for (i = 0; i < 4; i++) {
   pwr_val[i] = (u8)((write_val & (0x7f<<(i*8)))>>(i*8));
   if (pwr_val[i] > RF6052_MAX_TX_PWR)
    pwr_val[i] = RF6052_MAX_TX_PWR;
  }
  write_val = (pwr_val[3]<<24) | (pwr_val[2]<<16) |
       (pwr_val[1]<<8) | pwr_val[0];

  if (rf == 0)
   regoffset = regoffset_a[index];
  else
   regoffset = regoffset_b[index];

  phy_set_bb_reg(adapt, regoffset, bMaskDWord, write_val);
 }
}
