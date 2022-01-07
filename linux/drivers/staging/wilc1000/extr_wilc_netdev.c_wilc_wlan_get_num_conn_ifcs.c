
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wilc {size_t vif_num; TYPE_1__** vif; } ;
struct TYPE_2__ {int bssid; } ;


 int is_zero_ether_addr (int ) ;

int wilc_wlan_get_num_conn_ifcs(struct wilc *wilc)
{
 u8 i = 0;
 u8 ret_val = 0;

 for (i = 0; i < wilc->vif_num; i++)
  if (!is_zero_ether_addr(wilc->vif[i]->bssid))
   ret_val++;

 return ret_val;
}
