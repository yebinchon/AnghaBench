
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int curr_txpoweridx; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 int SetCCKTxPower (struct _adapter*,int ) ;
 int SetOFDMTxPower (struct _adapter*,int ) ;

void r8712_SetTxPower(struct _adapter *pAdapter)
{
 u8 TxPower = pAdapter->mppriv.curr_txpoweridx;

 SetCCKTxPower(pAdapter, TxPower);
 SetOFDMTxPower(pAdapter, TxPower);
}
