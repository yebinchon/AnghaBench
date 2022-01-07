
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int BIT1 ;
 int DBG_871X (char*) ;
 scalar_t__ rOFDM0_RxDSP ;
 int rtw_read8 (struct adapter*,scalar_t__) ;
 int rtw_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void hal_notch_filter_8723b(struct adapter *adapter, bool enable)
{
 if (enable) {
  DBG_871X("Enable notch filter\n");
  rtw_write8(adapter, rOFDM0_RxDSP+1, rtw_read8(adapter, rOFDM0_RxDSP+1) | BIT1);
 } else {
  DBG_871X("Disable notch filter\n");
  rtw_write8(adapter, rOFDM0_RxDSP+1, rtw_read8(adapter, rOFDM0_RxDSP+1) & ~BIT1);
 }
}
