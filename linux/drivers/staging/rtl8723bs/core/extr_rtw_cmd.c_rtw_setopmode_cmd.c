
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct setopmode_parm {scalar_t__ mode; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;
typedef enum NDIS_802_11_NETWORK_INFRASTRUCTURE { ____Placeholder_NDIS_802_11_NETWORK_INFRASTRUCTURE } NDIS_802_11_NETWORK_INFRASTRUCTURE ;


 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int _SetOpMode_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct setopmode_parm*,int ) ;
 int kfree (struct setopmode_parm*) ;
 scalar_t__ rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 void* rtw_zmalloc (int) ;
 int setopmode_hdl (struct adapter*,scalar_t__*) ;

u8 rtw_setopmode_cmd(struct adapter *padapter, enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype, bool enqueue)
{
 struct cmd_obj *ph2c;
 struct setopmode_parm *psetop;

 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 u8 res = _SUCCESS;

 psetop = rtw_zmalloc(sizeof(struct setopmode_parm));

 if (psetop == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }
 psetop->mode = (u8)networktype;

 if (enqueue) {
  ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
  if (ph2c == ((void*)0)) {
   kfree(psetop);
   res = _FAIL;
   goto exit;
  }

  init_h2fwcmd_w_parm_no_rsp(ph2c, psetop, _SetOpMode_CMD_);
  res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 } else {
  setopmode_hdl(padapter, (u8 *)psetop);
  kfree(psetop);
 }
exit:
 return res;
}
