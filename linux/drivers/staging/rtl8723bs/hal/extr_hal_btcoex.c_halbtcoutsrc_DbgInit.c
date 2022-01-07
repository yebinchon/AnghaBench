
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t BTC_MSG_ALGORITHM ;
 size_t BTC_MSG_INTERFACE ;
 size_t BTC_MSG_MAX ;
 scalar_t__* GLBtcDbgType ;

__attribute__((used)) static void halbtcoutsrc_DbgInit(void)
{
 u8 i;

 for (i = 0; i < BTC_MSG_MAX; i++)
  GLBtcDbgType[i] = 0;

 GLBtcDbgType[BTC_MSG_INTERFACE] =


   0;

 GLBtcDbgType[BTC_MSG_ALGORITHM] =
   0;
}
