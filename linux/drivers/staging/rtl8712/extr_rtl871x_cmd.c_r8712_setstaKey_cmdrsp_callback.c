
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_priv {int dummy; } ;
struct sta_info {int mac_id; int aid; } ;
struct set_stakey_rsp {int keyid; int addr; } ;
struct cmd_obj {scalar_t__ rsp; } ;
struct _adapter {struct sta_priv stapriv; } ;


 int r8712_free_cmd_obj (struct cmd_obj*) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,int ) ;

void r8712_setstaKey_cmdrsp_callback(struct _adapter *padapter,
         struct cmd_obj *pcmd)
{
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *)
      (pcmd->rsp);
 struct sta_info *psta = r8712_get_stainfo(pstapriv,
        psetstakey_rsp->addr);

 if (!psta)
  goto exit;
 psta->aid = psta->mac_id = psetstakey_rsp->keyid;
exit:
 r8712_free_cmd_obj(pcmd);
}
