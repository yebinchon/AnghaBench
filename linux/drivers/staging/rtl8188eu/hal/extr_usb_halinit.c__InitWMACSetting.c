
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_data_8188e {int ReceiveConfig; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int RCR_AAP ;
 int RCR_AB ;
 int RCR_AM ;
 int RCR_AMF ;
 int RCR_APM ;
 int RCR_APP_ICV ;
 int RCR_APP_MIC ;
 int RCR_APP_PHYSTS ;
 int RCR_CBSSID_BCN ;
 int RCR_CBSSID_DATA ;
 int RCR_HTC_LOC_CTRL ;
 scalar_t__ REG_MAR ;
 scalar_t__ REG_RCR ;
 int usb_write32 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void _InitWMACSetting(struct adapter *Adapter)
{
 struct hal_data_8188e *haldata = Adapter->HalData;

 haldata->ReceiveConfig = RCR_AAP | RCR_APM | RCR_AM | RCR_AB |
      RCR_CBSSID_DATA | RCR_CBSSID_BCN |
      RCR_APP_ICV | RCR_AMF | RCR_HTC_LOC_CTRL |
      RCR_APP_MIC | RCR_APP_PHYSTS;


 usb_write32(Adapter, REG_RCR, haldata->ReceiveConfig);


 usb_write32(Adapter, REG_MAR, 0xFFFFFFFF);
 usb_write32(Adapter, REG_MAR + 4, 0xFFFFFFFF);
}
