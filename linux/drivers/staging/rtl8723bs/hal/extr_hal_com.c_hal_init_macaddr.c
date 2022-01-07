
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_addr; } ;
struct adapter {TYPE_1__ eeprompriv; } ;


 int HW_VAR_MAC_ADDR ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int ) ;

void hal_init_macaddr(struct adapter *adapter)
{
 rtw_hal_set_hwreg(adapter, HW_VAR_MAC_ADDR, adapter->eeprompriv.mac_addr);
}
