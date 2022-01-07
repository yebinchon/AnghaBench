
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drvextra_cmd_parm {int * pbuf; scalar_t__ size; scalar_t__ type; int ec_id; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int GEN_CMD_CODE (int ) ;
 int POWER_SAVING_CTRL_WK_CID ;
 int _FAIL ;
 int _SUCCESS ;
 int _Set_Drv_Extra ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct drvextra_cmd_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 void* rtw_zmalloc (int) ;

u8 rtw_ps_cmd(struct adapter *padapter)
{
 struct cmd_obj *ppscmd;
 struct drvextra_cmd_parm *pdrvextra_cmd_parm;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 u8 res = _SUCCESS;

 ppscmd = rtw_zmalloc(sizeof(struct cmd_obj));
 if (ppscmd == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }

 pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 if (pdrvextra_cmd_parm == ((void*)0)) {
  kfree(ppscmd);
  res = _FAIL;
  goto exit;
 }

 pdrvextra_cmd_parm->ec_id = POWER_SAVING_CTRL_WK_CID;
 pdrvextra_cmd_parm->type = 0;
 pdrvextra_cmd_parm->size = 0;
 pdrvextra_cmd_parm->pbuf = ((void*)0);
 init_h2fwcmd_w_parm_no_rsp(ppscmd, pdrvextra_cmd_parm, GEN_CMD_CODE(_Set_Drv_Extra));

 res = rtw_enqueue_cmd(pcmdpriv, ppscmd);

exit:
 return res;
}
