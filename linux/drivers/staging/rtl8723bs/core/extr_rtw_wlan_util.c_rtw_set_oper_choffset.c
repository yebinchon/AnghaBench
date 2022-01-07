
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int oper_ch_offset; } ;


 TYPE_1__* adapter_to_dvobj (struct adapter*) ;

inline void rtw_set_oper_choffset(struct adapter *adapter, u8 offset)
{
 adapter_to_dvobj(adapter)->oper_ch_offset = offset;
}
