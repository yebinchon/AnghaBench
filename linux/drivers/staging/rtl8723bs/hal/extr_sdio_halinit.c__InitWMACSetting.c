
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hal_com_data {int ReceiveConfig; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int RCR_AB ;
 int RCR_AM ;
 int RCR_AMF ;
 int RCR_APM ;
 int RCR_APP_ICV ;
 int RCR_APP_MIC ;
 int RCR_APP_PHYST_RXFF ;
 int RCR_CBSSID_BCN ;
 int RCR_CBSSID_DATA ;
 int RCR_HTC_LOC_CTRL ;
 scalar_t__ REG_MAR ;
 scalar_t__ REG_RCR ;
 int REG_RXFLTMAP0 ;
 int REG_RXFLTMAP1 ;
 int REG_RXFLTMAP2 ;
 int rtw_write16 (struct adapter*,int ,int) ;
 int rtw_write32 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void _InitWMACSetting(struct adapter *padapter)
{
 struct hal_com_data *pHalData;
 u16 value16;


 pHalData = GET_HAL_DATA(padapter);

 pHalData->ReceiveConfig = 0;
 pHalData->ReceiveConfig |= RCR_APM | RCR_AM | RCR_AB;
 pHalData->ReceiveConfig |= RCR_CBSSID_DATA | RCR_CBSSID_BCN | RCR_AMF;
 pHalData->ReceiveConfig |= RCR_HTC_LOC_CTRL;
 pHalData->ReceiveConfig |= RCR_APP_PHYST_RXFF | RCR_APP_ICV | RCR_APP_MIC;
 rtw_write32(padapter, REG_RCR, pHalData->ReceiveConfig);


 rtw_write32(padapter, REG_MAR, 0xFFFFFFFF);
 rtw_write32(padapter, REG_MAR + 4, 0xFFFFFFFF);


 value16 = 0xFFFF;
 rtw_write16(padapter, REG_RXFLTMAP2, value16);




 value16 = 0x400;
 rtw_write16(padapter, REG_RXFLTMAP1, value16);


 value16 = 0xFFFF;
 rtw_write16(padapter, REG_RXFLTMAP0, value16);
}
