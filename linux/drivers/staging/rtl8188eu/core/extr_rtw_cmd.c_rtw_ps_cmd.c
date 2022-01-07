
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drvextra_cmd_parm {int * pbuf; int ec_id; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int * pbuf; int ec_id; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int GFP_ATOMIC ;
 int POWER_SAVING_CTRL_WK_CID ;
 int _FAIL ;
 int _Set_Drv_Extra_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct drvextra_cmd_parm*,struct drvextra_cmd_parm*,int ) ;
 int kfree (struct drvextra_cmd_parm*) ;
 struct drvextra_cmd_parm* kzalloc (int,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct drvextra_cmd_parm*) ;

u8 rtw_ps_cmd(struct adapter *padapter)
{
 struct cmd_obj *ppscmd;
 struct drvextra_cmd_parm *pdrvextra_cmd_parm;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 ppscmd = kzalloc(sizeof(*ppscmd), GFP_ATOMIC);
 pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
 if (!ppscmd || !pdrvextra_cmd_parm) {
  kfree(ppscmd);
  kfree(pdrvextra_cmd_parm);
  return _FAIL;
 }

 pdrvextra_cmd_parm->ec_id = POWER_SAVING_CTRL_WK_CID;
 pdrvextra_cmd_parm->pbuf = ((void*)0);
 init_h2fwcmd_w_parm_no_rsp(ppscmd, pdrvextra_cmd_parm, _Set_Drv_Extra_CMD_);

 return rtw_enqueue_cmd(pcmdpriv, ppscmd);
}
