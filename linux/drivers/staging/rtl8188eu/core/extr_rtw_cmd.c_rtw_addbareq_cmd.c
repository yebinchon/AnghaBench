
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct addBaReq_parm {int addr; int tid; } ;
struct adapter {struct cmd_priv cmdpriv; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int _AddBAReq_CMD_ ;
 int _FAIL ;
 int _SUCCESS ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct addBaReq_parm*,int ) ;
 int kfree (struct cmd_obj*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int ,int *,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
{
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct cmd_obj *ph2c;
 struct addBaReq_parm *paddbareq_parm;
 u8 res = _SUCCESS;

 ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c) {
  res = _FAIL;
  goto exit;
 }

 paddbareq_parm = kzalloc(sizeof(*paddbareq_parm), GFP_ATOMIC);
 if (!paddbareq_parm) {
  kfree(ph2c);
  res = _FAIL;
  goto exit;
 }

 paddbareq_parm->tid = tid;
 memcpy(paddbareq_parm->addr, addr, ETH_ALEN);

 init_h2fwcmd_w_parm_no_rsp(ph2c, paddbareq_parm, _AddBAReq_CMD_);

 res = rtw_enqueue_cmd(pcmdpriv, ph2c);

exit:

 return res;
}
