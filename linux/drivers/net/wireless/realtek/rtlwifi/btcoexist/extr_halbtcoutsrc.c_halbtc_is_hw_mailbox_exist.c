
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int adapter; } ;


 scalar_t__ IS_HARDWARE_TYPE_8812 (int ) ;

__attribute__((used)) static
bool halbtc_is_hw_mailbox_exist(struct btc_coexist *btcoexist)
{
 if (IS_HARDWARE_TYPE_8812(btcoexist->adapter))
  return 0;
 else
  return 1;
}
