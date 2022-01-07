
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct set_stakey_rsp {int addr; } ;
struct cmd_obj {scalar_t__ rsp; } ;
struct adapter {struct sta_priv stapriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_rtl871x_cmd_c_ ;
 int rtw_free_cmd_obj (struct cmd_obj*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;

void rtw_setstaKey_cmdrsp_callback(struct adapter *padapter, struct cmd_obj *pcmd)
{

 struct sta_priv *pstapriv = &padapter->stapriv;
 struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *) (pcmd->rsp);
 struct sta_info *psta = rtw_get_stainfo(pstapriv, psetstakey_rsp->addr);

 if (psta == ((void*)0)) {
  RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: rtw_setstaKey_cmdrsp_callback => can't get sta_info\n\n"));
  goto exit;
 }
exit:
 rtw_free_cmd_obj(pcmd);
}
