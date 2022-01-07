
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evt_priv {int dummy; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_rtl871x_cmd_c_ ;
 int _rtw_free_evt_priv (struct evt_priv*) ;

void rtw_free_evt_priv(struct evt_priv *pevtpriv)
{
 RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
 _rtw_free_evt_priv(pevtpriv);
}
