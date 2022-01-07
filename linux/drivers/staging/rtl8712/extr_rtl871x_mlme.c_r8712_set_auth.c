
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct setauth_parm {scalar_t__ mode; } ;
struct security_priv {scalar_t__ AuthAlgrthm; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {unsigned char* parmbuf; int cmdsz; int list; scalar_t__ rspsz; int * rsp; int cmdcode; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int _SetAuth_CMD_ ;
 int kfree (struct cmd_obj*) ;
 struct cmd_obj* kmalloc (int,int ) ;
 struct setauth_parm* kzalloc (int,int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

int r8712_set_auth(struct _adapter *adapter,
     struct security_priv *psecuritypriv)
{
 struct cmd_priv *pcmdpriv = &adapter->cmdpriv;
 struct cmd_obj *pcmd;
 struct setauth_parm *psetauthparm;

 pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
 if (!pcmd)
  return -ENOMEM;

 psetauthparm = kzalloc(sizeof(*psetauthparm), GFP_ATOMIC);
 if (!psetauthparm) {
  kfree(pcmd);
  return -ENOMEM;
 }
 psetauthparm->mode = (u8)psecuritypriv->AuthAlgrthm;
 pcmd->cmdcode = _SetAuth_CMD_;
 pcmd->parmbuf = (unsigned char *)psetauthparm;
 pcmd->cmdsz = sizeof(struct setauth_parm);
 pcmd->rsp = ((void*)0);
 pcmd->rspsz = 0;
 INIT_LIST_HEAD(&pcmd->list);
 r8712_enqueue_cmd(pcmdpriv, pcmd);
 return 0;
}
