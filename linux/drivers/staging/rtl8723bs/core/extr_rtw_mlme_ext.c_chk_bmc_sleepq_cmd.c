
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int GEN_CMD_CODE (int ) ;
 int _ChkBMCSleepq ;
 int _FAIL ;
 int _SUCCESS ;
 int init_h2fwcmd_w_parm_no_parm_rsp (struct cmd_obj*,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 struct cmd_obj* rtw_zmalloc (int) ;

u8 chk_bmc_sleepq_cmd(struct adapter *padapter)
{
 struct cmd_obj *ph2c;
 struct cmd_priv *pcmdpriv = &(padapter->cmdpriv);
 u8 res = _SUCCESS;

 ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 if (ph2c == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }

 init_h2fwcmd_w_parm_no_parm_rsp(ph2c, GEN_CMD_CODE(_ChkBMCSleepq));

 res = rtw_enqueue_cmd(pcmdpriv, ph2c);

exit:
 return res;
}
