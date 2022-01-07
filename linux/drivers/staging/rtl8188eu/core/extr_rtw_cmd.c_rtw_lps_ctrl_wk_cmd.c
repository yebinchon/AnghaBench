
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct drvextra_cmd_parm {int * pbuf; scalar_t__ type_size; int ec_id; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int GFP_ATOMIC ;
 int LPS_CTRL_WK_CID ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int _Set_Drv_Extra_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct drvextra_cmd_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kzalloc (int,int ) ;
 int lps_ctrl_wk_hdl (struct adapter*,scalar_t__) ;
 scalar_t__ rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
{
 struct cmd_obj *ph2c;
 struct drvextra_cmd_parm *pdrvextra_cmd_parm;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 u8 res = _SUCCESS;

 if (enqueue) {
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

  pdrvextra_cmd_parm->ec_id = LPS_CTRL_WK_CID;
  pdrvextra_cmd_parm->type_size = lps_ctrl_type;
  pdrvextra_cmd_parm->pbuf = ((void*)0);

  init_h2fwcmd_w_parm_no_rsp(ph2c, pdrvextra_cmd_parm, _Set_Drv_Extra_CMD_);

  res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 } else {
  lps_ctrl_wk_hdl(padapter, lps_ctrl_type);
 }

exit:

 return res;
}
