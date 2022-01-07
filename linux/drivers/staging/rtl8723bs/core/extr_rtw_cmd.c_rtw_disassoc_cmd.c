
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct disconnect_parm {int deauth_timeout_ms; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 scalar_t__ H2C_SUCCESS ;
 int RT_TRACE (int ,int ,char*) ;
 int _DisConnect_CMD_ ;
 int _FAIL ;
 int _SUCCESS ;
 int _drv_notice_ ;
 int _module_rtl871x_cmd_c_ ;
 scalar_t__ disconnect_hdl (struct adapter*,int *) ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct disconnect_parm*,int ) ;
 int kfree (struct disconnect_parm*) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 void* rtw_zmalloc (int) ;

u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueue)
{
 struct cmd_obj *cmdobj = ((void*)0);
 struct disconnect_parm *param = ((void*)0);
 struct cmd_priv *cmdpriv = &padapter->cmdpriv;
 u8 res = _SUCCESS;

 RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+rtw_disassoc_cmd\n"));


 param = rtw_zmalloc(sizeof(*param));
 if (param == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }
 param->deauth_timeout_ms = deauth_timeout_ms;

 if (enqueue) {

  cmdobj = rtw_zmalloc(sizeof(*cmdobj));
  if (cmdobj == ((void*)0)) {
   res = _FAIL;
   kfree(param);
   goto exit;
  }
  init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
  res = rtw_enqueue_cmd(cmdpriv, cmdobj);
 } else {

  if (H2C_SUCCESS != disconnect_hdl(padapter, (u8 *)param))
   res = _FAIL;
  kfree(param);
 }

exit:
 return res;
}
