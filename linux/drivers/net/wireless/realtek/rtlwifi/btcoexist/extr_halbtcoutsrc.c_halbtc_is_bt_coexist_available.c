
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int * adapter; int binded; } ;



__attribute__((used)) static bool halbtc_is_bt_coexist_available(struct btc_coexist *btcoexist)
{
 if (!btcoexist->binded || ((void*)0) == btcoexist->adapter)
  return 0;

 return 1;
}
