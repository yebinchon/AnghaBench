
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int hwaddr; } ;
struct set_stakey_rsp {int dummy; } ;
struct set_stakey_parm {int rspsz; int id; int algorithm; int addr; int * rsp; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int rspsz; int id; int algorithm; int addr; int * rsp; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int GFP_ATOMIC ;
 int _FAIL ;
 int _NO_PRIVACY_ ;
 int _SUCCESS ;
 int _SetStaKey_CMD_ ;
 int clear_cam_entry (struct adapter*,int ) ;
 int ether_addr_copy (int ,int ) ;
 int init_h2fwcmd_w_parm_no_rsp (struct set_stakey_parm*,struct set_stakey_parm*,int ) ;
 int kfree (struct set_stakey_parm*) ;
 void* kzalloc (int,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct set_stakey_parm*) ;

u8 rtw_clearstakey_cmd(struct adapter *padapter, u8 *psta, u8 entry, u8 enqueue)
{
 struct cmd_obj *ph2c;
 struct set_stakey_parm *psetstakey_para;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct set_stakey_rsp *psetstakey_rsp = ((void*)0);
 struct sta_info *sta = (struct sta_info *)psta;
 u8 res = _SUCCESS;

 if (!enqueue) {
  clear_cam_entry(padapter, entry);
 } else {
  ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
  if (!ph2c) {
   res = _FAIL;
   goto exit;
  }

  psetstakey_para = kzalloc(sizeof(*psetstakey_para), GFP_ATOMIC);
  if (!psetstakey_para) {
   kfree(ph2c);
   res = _FAIL;
   goto exit;
  }

  psetstakey_rsp = kzalloc(sizeof(*psetstakey_rsp), GFP_ATOMIC);
  if (!psetstakey_rsp) {
   kfree(ph2c);
   kfree(psetstakey_para);
   res = _FAIL;
   goto exit;
  }

  init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
  ph2c->rsp = (u8 *)psetstakey_rsp;
  ph2c->rspsz = sizeof(struct set_stakey_rsp);

  ether_addr_copy(psetstakey_para->addr, sta->hwaddr);

  psetstakey_para->algorithm = _NO_PRIVACY_;

  psetstakey_para->id = entry;

  res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 }
exit:

 return res;
}
