
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drvextra_cmd_parm {int * pbuf; scalar_t__ type_size; int ec_id; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int DYNAMIC_CHK_WK_CID ;
 int GFP_ATOMIC ;
 int _FAIL ;
 int _SUCCESS ;
 int _Set_Drv_Extra_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct drvextra_cmd_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kzalloc (int,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)
{
 struct cmd_obj *ph2c;
 struct drvextra_cmd_parm *pdrvextra_cmd_parm;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 u8 res = _SUCCESS;

 ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c) {
  res = _FAIL;
  goto exit;
 }

 pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
 if (!pdrvextra_cmd_parm) {
  kfree(ph2c);
  res = _FAIL;
  goto exit;
 }

 pdrvextra_cmd_parm->ec_id = DYNAMIC_CHK_WK_CID;
 pdrvextra_cmd_parm->type_size = 0;
 pdrvextra_cmd_parm->pbuf = (u8 *)padapter;

 init_h2fwcmd_w_parm_no_rsp(ph2c, pdrvextra_cmd_parm, _Set_Drv_Extra_CMD_);

 res = rtw_enqueue_cmd(pcmdpriv, ph2c);
exit:
 return res;
}
