
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int hci_version; } ;
struct btc_coexist {TYPE_1__ stack_info; } ;


 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;

void exhalbtc_set_hci_version(struct btc_coexist *btcoexist, u16 hci_version)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;

 btcoexist->stack_info.hci_version = hci_version;
}
