
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct adapter {int dummy; } ;


 int GET_PRIMARY_ADAPTER (struct adapter*) ;
 scalar_t__ REG_MACID ;
 int rtw_write8 (int ,scalar_t__,int) ;

__attribute__((used)) static void hw_var_set_macaddr(struct adapter *padapter, u8 variable, u8 *val)
{
 u8 idx = 0;
 u32 reg_macid;

 reg_macid = REG_MACID;

 for (idx = 0 ; idx < 6; idx++)
  rtw_write8(GET_PRIMARY_ADAPTER(padapter), (reg_macid+idx), val[idx]);
}
