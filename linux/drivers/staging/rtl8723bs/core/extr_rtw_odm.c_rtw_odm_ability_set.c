
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int HW_VAR_DM_FLAG ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

inline void rtw_odm_ability_set(struct adapter *adapter, u32 ability)
{
 rtw_hal_set_hwreg(adapter, HW_VAR_DM_FLAG, (u8 *)&ability);
}
