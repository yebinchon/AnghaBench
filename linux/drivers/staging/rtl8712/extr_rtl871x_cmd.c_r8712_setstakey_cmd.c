
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sta_info {int x_UncstKey; int hwaddr; } ;
struct set_stakey_rsp {int dummy; } ;
struct set_stakey_parm {int rspsz; unsigned char algorithm; int key; int addr; scalar_t__* rsp; } ;
struct security_priv {int XGrpKeyid; TYPE_1__* XGrpKey; scalar_t__ PrivacyAlgrthm; } ;
struct mlme_priv {int dummy; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int rspsz; unsigned char algorithm; int key; int addr; scalar_t__* rsp; } ;
struct _adapter {struct security_priv securitypriv; struct mlme_priv mlmepriv; struct cmd_priv cmdpriv; } ;
struct TYPE_2__ {int skey; } ;


 int GET_ENCRY_ALGO (struct security_priv*,struct sta_info*,unsigned char,int) ;
 int GFP_ATOMIC ;
 int WIFI_STATION_STATE ;
 int _SetStaKey_CMD_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int ether_addr_copy (int ,int ) ;
 int init_h2fwcmd_w_parm_no_rsp (struct set_stakey_parm*,struct set_stakey_parm*,int ) ;
 int kfree (struct set_stakey_parm*) ;
 void* kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct set_stakey_parm*) ;

void r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
{
 struct cmd_obj *ph2c;
 struct set_stakey_parm *psetstakey_para;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct set_stakey_rsp *psetstakey_rsp = ((void*)0);
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct security_priv *psecuritypriv = &padapter->securitypriv;
 struct sta_info *sta = (struct sta_info *)psta;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return;
 psetstakey_para = kmalloc(sizeof(*psetstakey_para), GFP_ATOMIC);
 if (!psetstakey_para) {
  kfree(ph2c);
  return;
 }
 psetstakey_rsp = kmalloc(sizeof(*psetstakey_rsp), GFP_ATOMIC);
 if (!psetstakey_rsp) {
  kfree(ph2c);
  kfree(psetstakey_para);
  return;
 }
 init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
 ph2c->rsp = (u8 *) psetstakey_rsp;
 ph2c->rspsz = sizeof(struct set_stakey_rsp);
 ether_addr_copy(psetstakey_para->addr, sta->hwaddr);
 if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
  psetstakey_para->algorithm = (unsigned char)
         psecuritypriv->PrivacyAlgrthm;
 else
  GET_ENCRY_ALGO(psecuritypriv, sta,
          psetstakey_para->algorithm, 0);
 if (unicast_key)
  memcpy(&psetstakey_para->key, &sta->x_UncstKey, 16);
 else
  memcpy(&psetstakey_para->key,
   &psecuritypriv->XGrpKey[
   psecuritypriv->XGrpKeyid - 1]. skey, 16);
 r8712_enqueue_cmd(pcmdpriv, ph2c);
}
