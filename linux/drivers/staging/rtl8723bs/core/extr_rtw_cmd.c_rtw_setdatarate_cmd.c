
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct setdatarate_parm {int mac_id; int datarates; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int GEN_CMD_CODE (int ) ;
 int NumRates ;
 int _FAIL ;
 int _SUCCESS ;
 int _SetDataRate ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct setdatarate_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 int memcpy (int ,int *,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 void* rtw_zmalloc (int) ;

u8 rtw_setdatarate_cmd(struct adapter *padapter, u8 *rateset)
{
 struct cmd_obj *ph2c;
 struct setdatarate_parm *pbsetdataratepara;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 u8 res = _SUCCESS;

 ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 if (ph2c == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }

 pbsetdataratepara = rtw_zmalloc(sizeof(struct setdatarate_parm));
 if (pbsetdataratepara == ((void*)0)) {
  kfree(ph2c);
  res = _FAIL;
  goto exit;
 }

 init_h2fwcmd_w_parm_no_rsp(ph2c, pbsetdataratepara, GEN_CMD_CODE(_SetDataRate));
 pbsetdataratepara->mac_id = 5;
 memcpy(pbsetdataratepara->datarates, rateset, NumRates);

 res = rtw_enqueue_cmd(pcmdpriv, ph2c);
exit:
 return res;
}
