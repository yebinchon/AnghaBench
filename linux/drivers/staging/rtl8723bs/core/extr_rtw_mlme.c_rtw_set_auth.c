
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setauth_parm {unsigned char mode; } ;
struct security_priv {scalar_t__ dot11AuthAlgrthm; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {unsigned char* parmbuf; int cmdsz; int list; scalar_t__ rspsz; int * rsp; int cmdcode; } ;
struct adapter {struct cmd_priv cmdpriv; } ;
typedef int sint ;


 int INIT_LIST_HEAD (int *) ;
 int RT_TRACE (int ,int ,char*) ;
 int _FAIL ;
 int _SUCCESS ;
 int _SetAuth_CMD_ ;
 int _drv_err_ ;
 int _module_rtl871x_mlme_c_ ;
 int kfree (unsigned char*) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 void* rtw_zmalloc (int) ;

sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
{
 struct cmd_obj *pcmd;
 struct setauth_parm *psetauthparm;
 struct cmd_priv *pcmdpriv = &(adapter->cmdpriv);
 sint res = _SUCCESS;

 pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 if (pcmd == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }

 psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
 if (psetauthparm == ((void*)0)) {
  kfree((unsigned char *)pcmd);
  res = _FAIL;
  goto exit;
 }

 psetauthparm->mode = (unsigned char)psecuritypriv->dot11AuthAlgrthm;

 pcmd->cmdcode = _SetAuth_CMD_;
 pcmd->parmbuf = (unsigned char *)psetauthparm;
 pcmd->cmdsz = (sizeof(struct setauth_parm));
 pcmd->rsp = ((void*)0);
 pcmd->rspsz = 0;


 INIT_LIST_HEAD(&pcmd->list);

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("after enqueue set_auth_cmd, auth_mode =%x\n", psecuritypriv->dot11AuthAlgrthm));

 res = rtw_enqueue_cmd(pcmdpriv, pcmd);

exit:
 return res;
}
