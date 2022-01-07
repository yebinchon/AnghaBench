
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sta_info {int dot118021x_UncstKey; int * hwaddr; scalar_t__ dot118021XPrivacy; } ;
struct set_stakey_parm {int key; int addr; scalar_t__ algorithm; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int ETH_ALEN ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int _SetStaKey_CMD_ ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct set_stakey_parm*,int ) ;
 int kfree (scalar_t__*) ;
 int memcpy (int ,int *,int) ;
 scalar_t__ rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 void* rtw_zmalloc (int) ;

u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
{
 struct cmd_obj *ph2c;
 struct set_stakey_parm *psetstakey_para;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 u8 res = _SUCCESS;

 ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 if (ph2c == ((void*)0)) {
  res = _FAIL;
  goto exit;
 }

 psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
 if (psetstakey_para == ((void*)0)) {
  kfree((u8 *)ph2c);
  res = _FAIL;
  goto exit;
 }

 init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);

 psetstakey_para->algorithm = (u8)psta->dot118021XPrivacy;

 memcpy(psetstakey_para->addr, psta->hwaddr, ETH_ALEN);

 memcpy(psetstakey_para->key, &psta->dot118021x_UncstKey, 16);

 res = rtw_enqueue_cmd(pcmdpriv, ph2c);

exit:

 return res;
}
