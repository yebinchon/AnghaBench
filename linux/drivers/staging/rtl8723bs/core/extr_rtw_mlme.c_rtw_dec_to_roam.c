
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int to_roam; } ;
struct adapter {TYPE_1__ mlmepriv; } ;



inline u8 rtw_dec_to_roam(struct adapter *adapter)
{
 adapter->mlmepriv.to_roam--;
 return adapter->mlmepriv.to_roam;
}
