
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int dot118021x_UncstKey; int * hwaddr; } ;
struct set_stakey_rsp {int dummy; } ;
struct set_stakey_parm {unsigned char algorithm; int* rsp; int rspsz; int key; int * addr; } ;
struct security_priv {size_t dot118021XGrpKeyid; int busetkipkey; TYPE_1__* dot118021XGrpKey; scalar_t__ dot11PrivacyAlgrthm; } ;
struct mlme_priv {int dummy; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {unsigned char algorithm; int* rsp; int rspsz; int key; int * addr; } ;
struct adapter {struct security_priv securitypriv; struct mlme_priv mlmepriv; struct cmd_priv cmdpriv; } ;
struct TYPE_2__ {int skey; } ;


 int ETH_ALEN ;
 int GET_ENCRY_ALGO (struct security_priv*,struct sta_info*,unsigned char,int) ;
 int WIFI_STATION_STATE ;
 int _FAIL ;
 int _SUCCESS ;
 int _SetStaKey_CMD_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int init_h2fwcmd_w_parm_no_rsp (struct set_stakey_parm*,struct set_stakey_parm*,int ) ;
 int kfree (struct set_stakey_parm*) ;
 int memcpy (int *,int *,int) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct set_stakey_parm*) ;
 void* rtw_zmalloc (int) ;
 int set_stakey_hdl (struct adapter*,int*) ;

u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue)
{
 struct cmd_obj *ph2c;
 struct set_stakey_parm *psetstakey_para;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct set_stakey_rsp *psetstakey_rsp = ((void*)0);

 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct security_priv *psecuritypriv = &padapter->securitypriv;
 u8 res = _SUCCESS;

 psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
 if (psetstakey_para == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }

 memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);

 if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
  psetstakey_para->algorithm = (unsigned char) psecuritypriv->dot11PrivacyAlgrthm;
 } else {
  GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, 0);
 }

 if (unicast_key == 1) {
  memcpy(&psetstakey_para->key, &sta->dot118021x_UncstKey, 16);
 } else {
  memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
 }


 padapter->securitypriv.busetkipkey = 1;

 if (enqueue) {
  ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
  if (ph2c == ((void*)0)) {
   kfree(psetstakey_para);
   res = _FAIL;
   goto exit;
  }

  psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
  if (psetstakey_rsp == ((void*)0)) {
   kfree(ph2c);
   kfree(psetstakey_para);
   res = _FAIL;
   goto exit;
  }

  init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
  ph2c->rsp = (u8 *) psetstakey_rsp;
  ph2c->rspsz = sizeof(struct set_stakey_rsp);
  res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 } else {
  set_stakey_hdl(padapter, (u8 *)psetstakey_para);
  kfree(psetstakey_para);
 }
exit:
 return res;
}
