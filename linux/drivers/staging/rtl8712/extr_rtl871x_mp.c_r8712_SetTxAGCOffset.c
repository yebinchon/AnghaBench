
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _adapter {int dummy; } ;


 int bXBTxAGC ;
 int bXCTxAGC ;
 int bXDTxAGC ;
 int rFPGA0_TxGainStage ;
 int set_bb_reg (struct _adapter*,int ,int,int) ;

void r8712_SetTxAGCOffset(struct _adapter *pAdapter, u32 ulTxAGCOffset)
{
 u32 TxAGCOffset_B, TxAGCOffset_C, TxAGCOffset_D, tmpAGC;

 TxAGCOffset_B = ulTxAGCOffset & 0x000000ff;
 TxAGCOffset_C = (ulTxAGCOffset & 0x0000ff00) >> 8;
 TxAGCOffset_D = (ulTxAGCOffset & 0x00ff0000) >> 16;
 tmpAGC = TxAGCOffset_D << 8 | TxAGCOffset_C << 4 | TxAGCOffset_B;
 set_bb_reg(pAdapter, rFPGA0_TxGainStage,
   (bXBTxAGC | bXCTxAGC | bXDTxAGC), tmpAGC);
}
