
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int oper_channel; } ;


 TYPE_1__* adapter_to_dvobj (struct adapter*) ;

inline u8 rtw_get_oper_ch(struct adapter *adapter)
{
 return adapter_to_dvobj(adapter)->oper_channel;
}
