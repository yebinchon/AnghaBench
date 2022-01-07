
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct setkey_parm {int algorithm; int grpkey; void** parmbuf; int cmdsz; int list; scalar_t__ rspsz; int * rsp; int cmdcode; int key; void* keyid; } ;
struct security_priv {int AuthAlgrthm; int * XGrpKey; TYPE_1__* DefKey; scalar_t__ PrivacyAlgrthm; scalar_t__ XGrpPrivacy; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int algorithm; int grpkey; void** parmbuf; int cmdsz; int list; scalar_t__ rspsz; int * rsp; int cmdcode; int key; void* keyid; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;
typedef size_t sint ;
struct TYPE_2__ {int * skey; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;

 int _SetKey_CMD_ ;



 int kfree (struct setkey_parm*) ;
 struct setkey_parm* kmalloc (int,int ) ;
 struct setkey_parm* kzalloc (int,int ) ;
 int memcpy (int ,int *,void*) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct setkey_parm*) ;

int r8712_set_key(struct _adapter *adapter,
    struct security_priv *psecuritypriv,
    sint keyid)
{
 struct cmd_priv *pcmdpriv = &adapter->cmdpriv;
 struct cmd_obj *pcmd;
 struct setkey_parm *psetkeyparm;
 u8 keylen;
 int ret;

 pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
 if (!pcmd)
  return -ENOMEM;
 psetkeyparm = kzalloc(sizeof(*psetkeyparm), GFP_ATOMIC);
 if (!psetkeyparm) {
  ret = -ENOMEM;
  goto err_free_cmd;
 }
 if (psecuritypriv->AuthAlgrthm == 2) {
  psetkeyparm->algorithm =
    (u8)psecuritypriv->XGrpPrivacy;
 } else {
  psetkeyparm->algorithm =
    (u8)psecuritypriv->PrivacyAlgrthm;
 }
 psetkeyparm->keyid = (u8)keyid;

 switch (psetkeyparm->algorithm) {
 case 128:
  keylen = 5;
  memcpy(psetkeyparm->key,
   psecuritypriv->DefKey[keyid].skey, keylen);
  break;
 case 129:
  keylen = 13;
  memcpy(psetkeyparm->key,
   psecuritypriv->DefKey[keyid].skey, keylen);
  break;
 case 130:
  if (keyid < 1 || keyid > 2) {
   ret = -EINVAL;
   goto err_free_parm;
  }
  keylen = 16;
  memcpy(psetkeyparm->key,
   &psecuritypriv->XGrpKey[keyid - 1], keylen);
  psetkeyparm->grpkey = 1;
  break;
 case 131:
  if (keyid < 1 || keyid > 2) {
   ret = -EINVAL;
   goto err_free_parm;
  }
  keylen = 16;
  memcpy(psetkeyparm->key,
   &psecuritypriv->XGrpKey[keyid - 1], keylen);
  psetkeyparm->grpkey = 1;
  break;
 default:
  ret = -EINVAL;
  goto err_free_parm;
 }
 pcmd->cmdcode = _SetKey_CMD_;
 pcmd->parmbuf = (u8 *)psetkeyparm;
 pcmd->cmdsz = (sizeof(struct setkey_parm));
 pcmd->rsp = ((void*)0);
 pcmd->rspsz = 0;
 INIT_LIST_HEAD(&pcmd->list);
 r8712_enqueue_cmd(pcmdpriv, pcmd);
 return 0;

err_free_parm:
 kfree(psetkeyparm);
err_free_cmd:
 kfree(pcmd);
 return ret;
}
