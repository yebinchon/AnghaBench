
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct adapter {int dummy; } ;


 scalar_t__ REG_BSSID ;
 int usb_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void hw_var_set_bssid(struct adapter *Adapter, u8 variable, u8 *val)
{
 u8 idx = 0;
 u32 reg_bssid;

 reg_bssid = REG_BSSID;

 for (idx = 0; idx < 6; idx++)
  usb_write8(Adapter, (reg_bssid + idx), val[idx]);
}
