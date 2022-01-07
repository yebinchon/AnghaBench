
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct setkey_parm {int keyid; int algorithm; int set_tx; int * key; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int* parmbuf; int cmdsz; int list; scalar_t__ rspsz; int * rsp; int cmdcode; } ;
struct TYPE_2__ {int key_mask; } ;
struct adapter {TYPE_1__ securitypriv; struct cmd_priv cmdpriv; } ;


 int BIT (int) ;
 int INIT_LIST_HEAD (int *) ;

 int _FAIL ;
 int _SUCCESS ;
 int _SetKey_CMD_ ;




 scalar_t__ is_wep_enc (int) ;
 int kfree (unsigned char*) ;
 int memcpy (int *,int*,int) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 void* rtw_zmalloc (int) ;

__attribute__((used)) static int rtw_ap_set_key(
 struct adapter *padapter,
 u8 *key,
 u8 alg,
 int keyid,
 u8 set_tx
)
{
 u8 keylen;
 struct cmd_obj *pcmd;
 struct setkey_parm *psetkeyparm;
 struct cmd_priv *pcmdpriv = &(padapter->cmdpriv);
 int res = _SUCCESS;



 pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 if (pcmd == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }
 psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
 if (psetkeyparm == ((void*)0)) {
  kfree((unsigned char *)pcmd);
  res = _FAIL;
  goto exit;
 }

 psetkeyparm->keyid = (u8)keyid;
 if (is_wep_enc(alg))
  padapter->securitypriv.key_mask |= BIT(psetkeyparm->keyid);

 psetkeyparm->algorithm = alg;

 psetkeyparm->set_tx = set_tx;

 switch (alg) {
 case 128:
  keylen = 5;
  break;
 case 129:
  keylen = 13;
  break;
 case 131:
 case 130:
 case 132:
 default:
  keylen = 16;
 }

 memcpy(&(psetkeyparm->key[0]), key, keylen);

 pcmd->cmdcode = _SetKey_CMD_;
 pcmd->parmbuf = (u8 *)psetkeyparm;
 pcmd->cmdsz = (sizeof(struct setkey_parm));
 pcmd->rsp = ((void*)0);
 pcmd->rspsz = 0;

 INIT_LIST_HEAD(&pcmd->list);

 res = rtw_enqueue_cmd(pcmdpriv, pcmd);

exit:

 return res;
}
