
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int oper_channel; } ;
struct adapter {TYPE_1__ mlmeextpriv; } ;



inline u8 rtw_get_oper_ch(struct adapter *adapter)
{
 return adapter->mlmeextpriv.oper_channel;
}
