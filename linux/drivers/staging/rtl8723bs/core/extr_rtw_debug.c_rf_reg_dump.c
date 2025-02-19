
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int DBG_871X_SEL (void*,char*,...) ;
 int DBG_871X_SEL_NL (void*,char*,...) ;
 int HW_VAR_RF_TYPE ;
 scalar_t__ RF_1T1R ;
 scalar_t__ RF_1T2R ;
 int rtw_hal_get_hwreg (struct adapter*,int ,scalar_t__*) ;
 int rtw_hal_read_rfreg (struct adapter*,int,int,int) ;

void rf_reg_dump(void *sel, struct adapter *adapter)
{
 int i, j = 1, path;
 u32 value;
 u8 rf_type = 0;
 u8 path_nums = 0;

 rtw_hal_get_hwreg(adapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));
 if ((RF_1T2R == rf_type) || (RF_1T1R == rf_type))
  path_nums = 1;
 else
  path_nums = 2;

 DBG_871X_SEL_NL(sel, "======= RF REG =======\n");

 for (path = 0; path < path_nums; path++) {
  DBG_871X_SEL_NL(sel, "RF_Path(%x)\n", path);
  for (i = 0; i < 0x100; i++) {
   value = rtw_hal_read_rfreg(adapter, path, i, 0xffffffff);
   if (j%4 == 1)
    DBG_871X_SEL_NL(sel, "0x%02x ", i);
   DBG_871X_SEL(sel, " 0x%08x ", value);
   if ((j++)%4 == 0)
    DBG_871X_SEL(sel, "\n");
  }
 }
}
