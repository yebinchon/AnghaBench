
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int usb_AggSettingRxUpdate (struct adapter*) ;
 int usb_AggSettingTxUpdate (struct adapter*) ;

__attribute__((used)) static void InitUsbAggregationSetting(struct adapter *Adapter)
{

 usb_AggSettingTxUpdate(Adapter);


 usb_AggSettingRxUpdate(Adapter);
}
