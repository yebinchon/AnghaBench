
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct adapter {int dummy; } ;


 size_t BTC_MSG_MAX ;
 size_t* GLBtcDbgType ;

void hal_btcoex_SetDBG(struct adapter *padapter, u32 *pDbgModule)
{
 u32 i;


 if (!pDbgModule)
  return;

 for (i = 0; i < BTC_MSG_MAX; i++)
  GLBtcDbgType[i] = pDbgModule[i];
}
