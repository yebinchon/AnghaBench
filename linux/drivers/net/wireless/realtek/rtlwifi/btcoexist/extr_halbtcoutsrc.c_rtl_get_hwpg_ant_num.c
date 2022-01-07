
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ ant_num; } ;
struct TYPE_4__ {TYPE_1__ btc_info; } ;
struct rtl_priv {TYPE_2__ btcoexist; } ;


 scalar_t__ ANT_X2 ;

__attribute__((used)) static u8 rtl_get_hwpg_ant_num(struct rtl_priv *rtlpriv)
{
 u8 num;

 if (rtlpriv->btcoexist.btc_info.ant_num == ANT_X2)
  num = 2;
 else
  num = 1;

 return num;
}
