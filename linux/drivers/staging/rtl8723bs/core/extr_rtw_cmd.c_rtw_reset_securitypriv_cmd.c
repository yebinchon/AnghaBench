
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
 int RESET_SECURITYPRIV ;
 int _FAIL ;
 int _SUCCESS ;
 int _Set_Drv_Extra ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct drvextra_cmd_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 void* rtw_zmalloc (int) ;

u8 rtw_reset_securitypriv_cmd(struct adapter *padapter)
{
 struct cmd_obj *ph2c;
 struct drvextra_cmd_parm *pdrvextra_cmd_parm;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 u8 res = _SUCCESS;

 ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 if (ph2c == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }

 pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 if (pdrvextra_cmd_parm == ((void*)0)) {
  kfree(ph2c);
  res = _FAIL;
  goto exit;
 }

 pdrvextra_cmd_parm->ec_id = RESET_SECURITYPRIV;
 pdrvextra_cmd_parm->type = 0;
 pdrvextra_cmd_parm->size = 0;
 pdrvextra_cmd_parm->pbuf = ((void*)0);

 init_h2fwcmd_w_parm_no_rsp(ph2c, pdrvextra_cmd_parm, GEN_CMD_CODE(_Set_Drv_Extra));



 res = rtw_enqueue_cmd(pcmdpriv, ph2c);

exit:
 return res;
}
