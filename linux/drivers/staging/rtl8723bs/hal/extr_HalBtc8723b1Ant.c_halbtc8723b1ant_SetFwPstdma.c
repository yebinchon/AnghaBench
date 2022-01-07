
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int* psTdmaPara; } ;
struct TYPE_6__ {int (* fBtcFillH2c ) (TYPE_1__*,int,int,int*) ;int (* fBtcGet ) (TYPE_1__*,int ,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_FW_EXEC ;
 int BIT4 ;
 int BIT5 ;
 int BIT6 ;
 int BTC_GET_BL_WIFI_AP_MODE_ENABLE ;
 int BTC_MSG_ALGORITHM ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_NOTIFY ;
 TYPE_4__* pCoexDm ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub2 (TYPE_1__*,int,int,int*) ;

__attribute__((used)) static void halbtc8723b1ant_SetFwPstdma(
 PBTC_COEXIST pBtCoexist, u8 byte1, u8 byte2, u8 byte3, u8 byte4, u8 byte5
)
{
 u8 H2C_Parameter[5] = {0};
 u8 realByte1 = byte1, realByte5 = byte5;
 bool bApEnable = 0;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE, &bApEnable);

 if (bApEnable) {
  if (byte1&BIT4 && !(byte1&BIT5)) {
   BTC_PRINT(
    BTC_MSG_INTERFACE,
    INTF_NOTIFY,
    ("[BTCoex], FW for 1Ant AP mode\n")
   );
   realByte1 &= ~BIT4;
   realByte1 |= BIT5;

   realByte5 |= BIT5;
   realByte5 &= ~BIT6;
  }
 }

 H2C_Parameter[0] = realByte1;
 H2C_Parameter[1] = byte2;
 H2C_Parameter[2] = byte3;
 H2C_Parameter[3] = byte4;
 H2C_Parameter[4] = realByte5;

 pCoexDm->psTdmaPara[0] = realByte1;
 pCoexDm->psTdmaPara[1] = byte2;
 pCoexDm->psTdmaPara[2] = byte3;
 pCoexDm->psTdmaPara[3] = byte4;
 pCoexDm->psTdmaPara[4] = realByte5;

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW_EXEC,
  (
   "[BTCoex], PS-TDMA H2C cmd = 0x%x%08x\n",
   H2C_Parameter[0],
   H2C_Parameter[1]<<24|
   H2C_Parameter[2]<<16|
   H2C_Parameter[3]<<8|
   H2C_Parameter[4]
  )
 );

 pBtCoexist->fBtcFillH2c(pBtCoexist, 0x60, 5, H2C_Parameter);
}
