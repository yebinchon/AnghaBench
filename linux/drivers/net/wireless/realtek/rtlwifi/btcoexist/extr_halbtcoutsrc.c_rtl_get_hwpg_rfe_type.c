
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int rfe_type; } ;


 struct rtl_hal* rtl_hal (struct rtl_priv*) ;

__attribute__((used)) static
u8 rtl_get_hwpg_rfe_type(struct rtl_priv *rtlpriv)
{
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);

 return rtlhal->rfe_type;
}
