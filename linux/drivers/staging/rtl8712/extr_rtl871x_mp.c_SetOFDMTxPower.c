
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct _adapter {int dummy; } ;


 int bTxAGCRate18_06 ;
 int bTxAGCRate54_24 ;
 int bTxAGCRateMCS11_MCS8 ;
 int bTxAGCRateMCS15_MCS12 ;
 int bTxAGCRateMCS3_MCS0 ;
 int bTxAGCRateMCS7_MCS4 ;
 int rTxAGC_Mcs03_Mcs00 ;
 int rTxAGC_Mcs07_Mcs04 ;
 int rTxAGC_Mcs11_Mcs08 ;
 int rTxAGC_Mcs15_Mcs12 ;
 int rTxAGC_Rate18_06 ;
 int rTxAGC_Rate54_24 ;
 int set_bb_reg (struct _adapter*,int ,int ,int) ;

__attribute__((used)) static void SetOFDMTxPower(struct _adapter *pAdapter, u8 TxPower)
{
 u32 TxAGC = 0;

 TxAGC |= ((TxPower << 24) | (TxPower << 16) | (TxPower << 8) |
    TxPower);
 set_bb_reg(pAdapter, rTxAGC_Rate18_06, bTxAGCRate18_06, TxAGC);
 set_bb_reg(pAdapter, rTxAGC_Rate54_24, bTxAGCRate54_24, TxAGC);
 set_bb_reg(pAdapter, rTxAGC_Mcs03_Mcs00, bTxAGCRateMCS3_MCS0, TxAGC);
 set_bb_reg(pAdapter, rTxAGC_Mcs07_Mcs04, bTxAGCRateMCS7_MCS4, TxAGC);
 set_bb_reg(pAdapter, rTxAGC_Mcs11_Mcs08, bTxAGCRateMCS11_MCS8, TxAGC);
 set_bb_reg(pAdapter, rTxAGC_Mcs15_Mcs12, bTxAGCRateMCS15_MCS12, TxAGC);
}
