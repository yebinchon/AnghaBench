
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int to_join; scalar_t__ to_roam; } ;
struct adapter {TYPE_1__ mlmepriv; } ;



inline void rtw_set_to_roam(struct adapter *adapter, u8 to_roam)
{
 if (to_roam == 0)
  adapter->mlmepriv.to_join = 0;
 adapter->mlmepriv.to_roam = to_roam;
}
