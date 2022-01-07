
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int single_ant_path; } ;
struct TYPE_4__ {TYPE_1__ btc_info; } ;
struct rtl_priv {TYPE_2__ btcoexist; } ;



__attribute__((used)) static u8 rtl_get_hwpg_single_ant_path(struct rtl_priv *rtlpriv)
{
 return rtlpriv->btcoexist.btc_info.single_ant_path;
}
