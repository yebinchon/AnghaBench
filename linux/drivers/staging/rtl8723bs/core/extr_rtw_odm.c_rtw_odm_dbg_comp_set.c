
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct adapter {int dummy; } ;


 int HW_DEF_ODM_DBG_FLAG ;
 int rtw_hal_set_def_var (struct adapter*,int ,int *) ;

inline void rtw_odm_dbg_comp_set(struct adapter *adapter, u64 comps)
{
 rtw_hal_set_def_var(adapter, HW_DEF_ODM_DBG_FLAG, &comps);
}
