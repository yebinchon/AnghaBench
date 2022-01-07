
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int oper_bwmode; } ;
struct adapter {TYPE_1__ mlmeextpriv; } ;



inline void rtw_set_oper_bw(struct adapter *adapter, u8 bw)
{
 adapter->mlmeextpriv.oper_bwmode = bw;
}
