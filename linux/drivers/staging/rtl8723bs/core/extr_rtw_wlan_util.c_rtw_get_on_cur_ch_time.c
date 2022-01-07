
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cur_channel; } ;
struct adapter {TYPE_1__ mlmeextpriv; } ;
struct TYPE_4__ {scalar_t__ oper_channel; unsigned long on_oper_ch_time; } ;


 TYPE_2__* adapter_to_dvobj (struct adapter*) ;

inline unsigned long rtw_get_on_cur_ch_time(struct adapter *adapter)
{
 if (adapter->mlmeextpriv.cur_channel == adapter_to_dvobj(adapter)->oper_channel)
  return adapter_to_dvobj(adapter)->on_oper_ch_time;
 else
  return 0;
}
