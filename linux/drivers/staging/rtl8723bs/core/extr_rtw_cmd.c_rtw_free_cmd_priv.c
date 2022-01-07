
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_priv {int dummy; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_rtl871x_cmd_c_ ;
 int _rtw_free_cmd_priv (struct cmd_priv*) ;

void rtw_free_cmd_priv(struct cmd_priv *pcmdpriv)
{
 RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_cmd_priv\n"));
 _rtw_free_cmd_priv(pcmdpriv);
}
