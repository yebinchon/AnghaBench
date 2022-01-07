
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
typedef scalar_t__ s32 ;


 int LAST_ENTRY_OF_TX_PKT_BUFFER ;
 scalar_t__ _FAIL ;
 scalar_t__ _LLTWrite (struct adapter*,int,int) ;
 scalar_t__ _SUCCESS ;
 scalar_t__ iol_InitLLTTable (struct adapter*,int) ;
 scalar_t__ rtw_iol_applied (struct adapter*) ;

s32 InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
{
 s32 status = _FAIL;
 u32 i;
 u32 Last_Entry_Of_TxPktBuf = LAST_ENTRY_OF_TX_PKT_BUFFER;

 if (rtw_iol_applied(padapter)) {
  status = iol_InitLLTTable(padapter, txpktbuf_bndy);
 } else {
  for (i = 0; i < (txpktbuf_bndy - 1); i++) {
   status = _LLTWrite(padapter, i, i + 1);
   if (status != _SUCCESS)
    return status;
  }


  status = _LLTWrite(padapter, (txpktbuf_bndy - 1), 0xFF);
  if (status != _SUCCESS)
   return status;




  for (i = txpktbuf_bndy; i < Last_Entry_Of_TxPktBuf; i++) {
   status = _LLTWrite(padapter, i, (i + 1));
   if (status != _SUCCESS)
    return status;
  }


  status = _LLTWrite(padapter, Last_Entry_Of_TxPktBuf, txpktbuf_bndy);
  if (status != _SUCCESS)
   return status;
 }

 return status;
}
