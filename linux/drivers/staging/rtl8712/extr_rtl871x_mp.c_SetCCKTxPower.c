
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct _adapter {int dummy; } ;


 int bTxAGCRateCCK ;
 int rTxAGC_CCK_Mcs32 ;
 int set_bb_reg (struct _adapter*,int ,int ,int ) ;

__attribute__((used)) static void SetCCKTxPower(struct _adapter *pAdapter, u8 TxPower)
{
 u16 TxAGC = 0;

 TxAGC = TxPower;
 set_bb_reg(pAdapter, rTxAGC_CCK_Mcs32, bTxAGCRateCCK, TxAGC);
}
